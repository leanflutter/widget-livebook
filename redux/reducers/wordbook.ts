import * as types from '../types';

const initialState = {
  list: {},
  map: {},
};

const course = (state = initialState, action: any) => {
  switch (action.type) {
    case types.RECEIVE_WORDBOOK_LIST:
      return {
        ...state,
        list: Object.assign({}, state.list, {
          [action.filter]: action.items,
        }),
      };
    case types.RECEIVE_WORDBOOK:
      return {
        ...state,
        map: Object.assign({}, state.map, {
          [action.data.id]: action.data,
        }),
      };
    default:
      return state;
  }
};

export default course;
