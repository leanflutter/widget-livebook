import axios, {
  AxiosInstance,
  AxiosPromise,
  AxiosRequestConfig,
  AxiosResponse,
} from 'axios';
import * as _ from 'lodash';

const normalize = (caseType: string, object: any): any => {
  if (!object) {
    return object;
  }
  if (typeof object === 'object') {
    Object.keys(object).forEach((key): any => {
      const convertedKey =
        caseType === 'camelcase' ? _.camelCase(key) : _.snakeCase(key);
      if (convertedKey !== key) {
        object[convertedKey] = object[key];
        delete object[key];
      }

      object[convertedKey] = normalize(caseType, object[convertedKey]);
    });
  } else if (Array.isArray(object)) {
    object = object.map((v): any => normalize(caseType, v));
  }
  return object;
};

class HttpClient {
  private sharedAxios: AxiosInstance;

  public constructor() {
    this.sharedAxios = axios.create({
      baseURL: 'https://flutter-widget-livebook-api.thecode.me',
    });

    this.sharedAxios.interceptors.request.use(
      async (config): Promise<AxiosRequestConfig> => {
        const nextConfig = Object.assign({}, config, {
          data: normalize('snakecase', config.data),
          params: normalize('snakecase', config.params),
        });

        const accessToken = window.localStorage.getItem('accessToken');
        if (accessToken) {
          nextConfig.headers.Authorization = `Bearer ${accessToken}`;
        }
        return nextConfig;
      }
    );
    this.sharedAxios.interceptors.response.use(
      (response): AxiosResponse => {
        const nextResponse = Object.assign({}, response, {
          data: normalize('camelcase', response.data),
        });
        return nextResponse;
      },
      (error): any => {
        const { response: { data } = { data: undefined } } = error;
        if (data) {
          if (data.errors && data.errors.length > 0) {
            error.message = data.errors[0].message;
          } else if (data.message) {
            error.message = data.message;
          }
        }
        console.log(error);
        return Promise.reject(error);
      }
    );
  }

  public get<T = any>(
    url: string,
    config?: AxiosRequestConfig
  ): AxiosPromise<T> {
    return this.sharedAxios.get(url, config);
  }

  public delete(url: string, config?: AxiosRequestConfig): AxiosPromise {
    return this.sharedAxios.delete(url, config);
  }

  public head(url: string, config?: AxiosRequestConfig): AxiosPromise {
    return this.sharedAxios.head(url, config);
  }

  public post<T = any>(
    url: string,
    data?: any,
    config?: AxiosRequestConfig
  ): AxiosPromise<T> {
    return this.sharedAxios.post(url, data, config);
  }

  public put<T = any>(
    url: string,
    data?: any,
    config?: AxiosRequestConfig
  ): AxiosPromise<T> {
    return this.sharedAxios.put(url, data, config);
  }

  public patch<T = any>(
    url: string,
    data?: any,
    config?: AxiosRequestConfig
  ): AxiosPromise<T> {
    return this.sharedAxios.patch(url, data, config);
  }
}

export default new HttpClient();
