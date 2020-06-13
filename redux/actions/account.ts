import { Dispatch } from 'redux';
import * as types from '../types';
import { httpClient } from '../../networking';

/**
 * 用户登录
 * @param data
 */
export const login = (data: any): any => async (dispatch: Dispatch) => {
  let user;
  let resp = await httpClient.post('/account/login', data);

  user = resp.data.data;
  if (typeof window !== 'undefined') {
    window.localStorage.setItem('accessToken', user.jwtToken.accessToken);
  }

  dispatch({
    type: types.ACCOUNT_LOGIN,
    user,
  });

  return resp;
};

/**
 * 用户登出
 */
export const logout = () => async (dispatch: Dispatch) => {
  try {
    await httpClient.post('/account/logout');
  } catch (e) {}
  dispatch({
    type: types.ACCOUNT_LOGOUT,
  });
};
