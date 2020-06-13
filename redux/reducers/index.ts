import { combineReducers } from 'redux';

import account from './account';
import wordbook from './wordbook';

const reducers = combineReducers({
  account,
  wordbook,
});

export default reducers;
