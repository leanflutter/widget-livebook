'use strict';

import _ from 'lodash';
import {
  livebookUrl, 
  livebookUIExplorerUrl,
  livebookGithubRepoUrl,
} from './globals';

const injectLiveSample = (widgetName) => {
  let liveSampleElement = document.createElement('div');
  liveSampleElement.className = 'livepreview';
  liveSampleElement.innerHTML = `
    <style>
      .livesample-container {
        display: inline-flex;
        flex-direction: column;
        background-color: #2372a3;
        min-width: 460px;
        max-width: 460px;
        padding: 16px;
      }
      .livesample-container a {
        color: #c7dbfc;  
      }
      .livesample-container p {
        color: #ffffff;  
      }
      .livesample-container iframe {
        background-color: #ffffff;
        width: 100%;
        min-height: 320px; 
        border: none;
      }
      .livesample-container footer {
        display: inline-flex;
        background-color: transparent;
        margin-top: 16px;
        padding: 0;
      }
    </style>
    <h2>Live samples</h2>
    <div class="livesample-container">
      <p>
        This sample shows a basic ${widgetName}.
      </p>
      <iframe
        src='${livebookUIExplorerUrl}/index.html#/Slice${widgetName}'
        scrolling="no"
      ></iframe>
      <footer>
        <a target="_blank" href="${livebookGithubRepoUrl}/tree/master/uiexplorer/lib/views/slice_${_.snakeCase(widgetName)}/slice_${_.snakeCase(widgetName)}.dart">Source</a>
        <span style="flex: 1;"></span>
        <a target="_blank" href="${livebookUrl}/widgets/${widgetName}">See more samples on Flutter Widget Livebook</a>
      </footer>
    </div>
  `;

  document
    .getElementsByClassName('desc')[0]
    .appendChild(liveSampleElement);
};

if (location.host === 'api.flutter.dev' && (
  location.pathname.includes('/flutter/cupertino/') ||
  location.pathname.includes('/flutter/widgets/') ||
  location.pathname.includes('/flutter/material/') 
)) {
  const pathname = location.pathname;
  let widgetName = pathname
    .substr(pathname.lastIndexOf('/') + 1)
    .replace('-class.html', '');

  chrome.runtime.sendMessage({ contentScriptQuery: 'queryDb' }, data => {
    if (data.widgets.includes(widgetName)) {
      injectLiveSample(widgetName);
    }
  });
}