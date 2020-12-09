import axios, {
  AxiosInstance,
  AxiosPromise,
  AxiosRequestConfig,
  AxiosResponse,
} from 'axios';
import env from '../../utils/env';

class HttpClient {
  private sharedAxios: AxiosInstance;

  public constructor() {
    this.sharedAxios = axios.create({
      baseURL: env.apiURL,
    });
  }

  public request<T = any, R = AxiosResponse<T>>(
    config: AxiosRequestConfig,
    runInBackground = true
  ): Promise<R> {
    if (!runInBackground || !chrome?.runtime?.id) {
      return this.sharedAxios.request(config);
    }

    return new Promise<R>((resolve, reject) => {
      const message = { method: 'request', arguments: config };
      const responseCallback = ({ response, error }: any) => {
        if (error) {
          reject(error);
        } else if (response) {
          resolve(response);
        }
      };
      chrome.runtime.sendMessage(message, responseCallback);
    });
  }

  public get<T = any>(
    url: string,
    config?: AxiosRequestConfig
  ): AxiosPromise<T> {
    return this.request({
      method: 'GET',
      url,
      ...config,
    });
  }

  public delete(url: string, config?: AxiosRequestConfig): AxiosPromise {
    return this.request({
      method: 'DELETE',
      url,
      ...config,
    });
  }

  public post<T = any>(
    url: string,
    data?: any,
    config?: AxiosRequestConfig
  ): AxiosPromise<T> {
    return this.request({
      method: 'POST',
      url,
      data,
      ...config,
    });
  }

  public put<T = any>(
    url: string,
    data?: any,
    config?: AxiosRequestConfig
  ): AxiosPromise<T> {
    return this.request({
      method: 'PUT',
      url,
      data,
      ...config,
    });
  }

  public patch<T = any>(
    url: string,
    data?: any,
    config?: AxiosRequestConfig
  ): AxiosPromise<T> {
    return this.request({
      method: 'PATCH',
      url,
      data,
      ...config,
    });
  }
}

export default HttpClient;
