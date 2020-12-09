export default {
  env: process.env.REACT_APP_ENV,
  webURL: process.env.REACT_APP_WEB_URL,
  apiURL: process.env.REACT_APP_API_URL,
  extensionId: chrome.extension
    ? chrome.i18n.getMessage('@@extension_id')
    : '',
};
