import * as React from 'react';
import * as ReactDOM from 'react-dom';
import { ConfigProvider } from 'antd';

import { InjectWebDemo4Package, InjectWebDemo4Snippet } from './components';

declare var location: any;

const ELEMENT_ID = '___fwl';

const injectWebDemo4Package = async () => {
  const { host } = location;

  if (!['pub.dev', 'pub.flutter-io.cn'].includes(host)) return;

  let embedWebDemoEl = document.getElementById(ELEMENT_ID);
  if (!embedWebDemoEl) {
    embedWebDemoEl = document.createElement('div');
    embedWebDemoEl.setAttribute('id', ELEMENT_ID);

    const contentEl = document.getElementsByClassName('detail-tabs-content')[0];
    if (contentEl) contentEl.insertBefore(embedWebDemoEl, contentEl.firstChild);
  }

  ReactDOM.render(
    <ConfigProvider autoInsertSpaceInButton={false}>
      <InjectWebDemo4Package />
    </ConfigProvider>,
    embedWebDemoEl
  );
};

const injectWebDemo4Snippet = async () => {
  const { host, pathname } = location;

  if (
    !(
      host === 'api.flutter.dev' &&
      (pathname.includes('/flutter/cupertino/') ||
        pathname.includes('/flutter/widgets/') ||
        pathname.includes('/flutter/material/'))
    )
  ) {
    return;
  }

  let embedWebDemoEl = document.getElementById(ELEMENT_ID);
  if (!embedWebDemoEl) {
    embedWebDemoEl = document.createElement('div');
    embedWebDemoEl.setAttribute('id', ELEMENT_ID);

    const descEl = document.getElementsByClassName('desc')[0];
    if (descEl) descEl.appendChild(embedWebDemoEl);
  }

  ReactDOM.render(
    <ConfigProvider autoInsertSpaceInButton={false}>
      <InjectWebDemo4Snippet />
    </ConfigProvider>,
    embedWebDemoEl
  );
};

setTimeout(() => {
  injectWebDemo4Package();
  injectWebDemo4Snippet();
}, 300);
