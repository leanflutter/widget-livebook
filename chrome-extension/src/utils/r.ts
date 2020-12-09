const r = (path: string): string => {
  if (!chrome.extension) return path;
  return `chrome-extension://${chrome.i18n.getMessage(
    '@@extension_id'
  )}${path}`;
};

export default r;
