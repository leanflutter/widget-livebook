import { Dispatch } from 'redux';
import * as types from '../types';
import { httpClient } from '../../networking';

/**
 * 获取应用列表
 */
export const getWordbookList = ({ filter, params }: any): any => async (
  dispatch: Dispatch
) => {
  let resp = await httpClient.get('/wordbooks', {
    params,
  });

  dispatch({
    type: types.RECEIVE_WORDBOOK_LIST,
    filter,
    items: resp.data.items,
  });

  return resp;
};

/**
 * 获取应用
 */
export const getWordbook = (id: any): any => async (dispatch: Dispatch) => {
  let resp = await httpClient.get(`/wordbooks/${id}`);

  dispatch({
    type: types.RECEIVE_WORDBOOK,
    data: resp.data.data,
  });

  return resp;
};
