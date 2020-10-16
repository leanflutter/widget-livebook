import axios, { AxiosInstance, AxiosPromise, AxiosRequestConfig } from 'axios';

class HttpClient {
  private sharedAxios: AxiosInstance;

  public constructor() {
    this.sharedAxios = axios.create({ baseURL: '/api' });
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
