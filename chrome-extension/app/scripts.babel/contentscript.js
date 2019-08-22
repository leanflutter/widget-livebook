'use strict';

const livebookUrl = 'https://flutter-widget-livebook-uiexplorer.blankapp.org';
const livebookUIExplorerUrl = 'https://flutter-widget-livebook-uiexplorer.blankapp.org';

const injectLiveSample = (widgetName) => {
  let liveSampleElement = document.createElement('div');
  liveSampleElement.className = 'livepreview';
  liveSampleElement.innerHTML = `
    <h2>Live Sample</h2>
    <div class="snippet-container">
      <iframe
        style="width: 100%; height: 320px; margin-top: 10px; border: none;"
        src='${livebookUIExplorerUrl}/#/Slice${widgetName}'
        scrolling="no"
      />
    </div>

    <div><a href="#">Power by Flutter Widget Livebook</div>

    <div><a href="#">Power by Flutter Widget Livebook</div>

    <div><a href="#">Power by Flutter Widget Livebook</div>
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


  fetch(
    `${livebookUrl}/assets/db.json`, 
    {
      method: 'GET',
    })
    .then((r) => {
      r
        .json()
        .then(d => {
          if (d.widgets.includes(widgetName)) {
            injectLiveSample(widgetName);
          }
        });
    });
}