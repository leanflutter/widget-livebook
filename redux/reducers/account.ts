import * as types from '../types';

const initialState = {
  user: null,
};

const global = (state = initialState, action: any) => {
  switch (action.type) {
    case types.ACCOUNT_LOGIN:
      return {
        ...state,
        user: Object.assign({}, action.user),
      };
    case types.ACCOUNT_LOGOUT:
      return {
        ...state,
        user: null,
      };
    default:
      return state;
  }
};

export default global;
