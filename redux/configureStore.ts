import { compose, createStore, applyMiddleware } from 'redux';
import { persistStore, persistReducer } from 'redux-persist';
import storage from 'redux-persist/lib/storage';
import thunk from 'redux-thunk';
import rootReducer from './reducers';

const persistedReducer = persistReducer(
  {
    key: 'root',
    storage,
  },
  rootReducer
);
const middlewares = [thunk];

const configureStore = () => {
  let reduxDevToolsExtension;
  if (typeof window !== 'undefined') {
    reduxDevToolsExtension =
      (window as any).__REDUX_DEVTOOLS_EXTENSION__ &&
      (window as any).__REDUX_DEVTOOLS_EXTENSION__();
  }
  const store = compose(applyMiddleware(...middlewares))(createStore)(
    persistedReducer,
    reduxDevToolsExtension
  );

  const persistor = persistStore(store);
  return { store, persistor };
};

export default configureStore;
