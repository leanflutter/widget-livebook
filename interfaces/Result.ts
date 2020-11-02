import { Pagination } from './Pagination';

export type Result<T> = {
  status?: string;
  message?: string;
  pagination?: Pagination;
  data?: T;
  items?: Array<T>;
};
