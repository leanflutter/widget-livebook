import { sharedHttpClient } from './networking';

// Listen to messages sent from other parts of the extension.
chrome.runtime.onMessage.addListener((request, sender, sendResponse) => {
  // onMessage must return "true" if response is async.
  let isResponseAsync = false;

  const _handleMessageRequest = () => {
    const successCallback = (response: any) => sendResponse({ response });
    const failureCallback = (error: any) => sendResponse({ error });

    sharedHttpClient
      .request(request.arguments, false)
      .then(successCallback)
      .catch(failureCallback);

    return true;
  };

  switch (request.method) {
    case 'request':
      return _handleMessageRequest();
    default:
      console.log(`Message not supported.`);
  }

  return isResponseAsync;
});
