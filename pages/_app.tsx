import React from 'react'
import App from 'next/app'
import Router, { withRouter } from 'next/router'

import { MainLayout, BlankLayout } from '../layouts'
import * as gtag from '../utils/gtag'

import '@duik/icon/dist/styles.css'
import '@duik/it/dist/styles.css'
import 'nprogress/nprogress.css'
import 'prism-themes/themes/prism-vs.css'
// import 'prism-themes/themes/prism-atom-dark.css'

Router.events.on('routeChangeComplete', (url) => gtag.pageview(url))

class MyApp extends App {
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

  render() {
    const { router, Component, pageProps } = this.props

    let LayoutComponent = MainLayout;

    if (router.pathname == '/') {
      LayoutComponent = BlankLayout;
    }

    return (
      <>
        <LayoutComponent>
          <Component {...pageProps} />
        </LayoutComponent>
        <style global jsx>{`
          #__next {
            height: 100vh;
          }
          iframe {
            border: none !important;
            background-color: var(--bg-base) !important;
          }
        `}</style>
      </>
    );
  }
}

export default withRouter(MyApp)
