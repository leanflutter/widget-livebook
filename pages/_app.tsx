import React from 'react';
import App from 'next/app';
import Router, { withRouter } from 'next/router';
import { ConfigProvider } from 'antd';
import { Layout, ArticleContent, ArticleSidebar } from '../components';
import { gtag, useCurrentLanguage } from '../utils';

import 'nprogress/nprogress.css';
// import 'prism-themes/themes/prism-atom-dark.css'

import '../styles/global.less';
import '../styles/devices.css';

Router.events.on('routeChangeComplete', (url) => gtag.pageview(url));

const antdCustomConfig = {
  autoInsertSpaceInButton: false,
};

class MyApp extends App<any> {
  // Only uncomment this method if you have blocking data requirements for
  // every single page in your application. This disables the ability to
  // perform automatic static optimization, causing every page in your app to
  // be server-side rendered.
  //
  // static async getInitialProps(appContext) {
  //   // calls page's `getInitialProps` and fills `appProps.pageProps`
  //   const appProps = await App.getInitialProps(appContext);
  //
  //   return { ...appProps }
  // }

  _renderPageComponent() {
    const { Component, pageProps } = this.props;
    if (Component?.isMDXComponent) {
      return (
        <Layout>
          <div style={{ display: 'flex', width: '100vw' }}>
            <ArticleSidebar />
            <ArticleContent>
              <Component {...pageProps} />
            </ArticleContent>
          </div>
        </Layout>
      );
    }

    return <Component {...pageProps} />;
  }

  render() {
    const { router } = this.props;
    const { currentLanguage } = useCurrentLanguage(router);

    return (
      <ConfigProvider
        direction={currentLanguage.dir || 'ltr'}
        {...antdCustomConfig}
      >
        {this._renderPageComponent()}
      </ConfigProvider>
    );
  }
}

export default withRouter(MyApp);
