'use strict';

import {
  livebookUrl, 
  livebookUIExplorerUrl,
} from './globals';

chrome.runtime.onInstalled.addListener(details => {
  console.log('previousVersion', details.previousVersion);
});

chrome.runtime.onMessage.addListener((request, sender, sendResponse) =>{
  if (request.contentScriptQuery == 'queryDb') {
    fetch(`${livebookUIExplorerUrl}/assets/db.json`)
      .then((r) => {
        if (r.ok) {
          r
            .json()
            .then(d => {
              sendResponse(d);
            })
            .catch(e => {
              console.log(e);
            });
        }
      })
      .catch(e => {
        console.log(e);
      });

    return true;  // Will respond asynchronously.
  }
});

chrome.browserAction.onClicked.addListener((_) =>{
  chrome.tabs.create({ url: livebookUrl });
});