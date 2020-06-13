const withPlugins = require('next-compose-plugins');
const withCSS = require('@zeit/next-css');
const withSass = require('@zeit/next-sass');
const withFonts = require('next-fonts');
const withLess = require('@zeit/next-less');
const lessToJS = require('less-vars-to-js');
const fs = require('fs');
const path = require('path');
const withMDX = require('./plugins/mdx')({
  extension: /\.(md|mdx)$/,
});
const withOffline = require('next-offline');

// Where your antd-custom.less file lives
const themeVariables = lessToJS(
  fs.readFileSync(path.resolve(__dirname, './styles/antd-custom.less'), 'utf8')
);

module.exports = withPlugins(
  [withLess, withCSS, withSass, withFonts, withMDX],
  {
    pageExtensions: ['js', 'jsx', 'ts', 'tsx', 'md', 'mdx'],
    target: 'serverless',
    compress: true,
    enableSvg: true,
    lessLoaderOptions: {
      javascriptEnabled: true,
      modifyVars: themeVariables, // make your antd custom effective
    },
    webpack: (config, { isServer }) => {
      if (isServer) {
        const antStyles = /antd\/.*?\/style.*?/;
        const origExternals = [...config.externals];
        config.externals = [
          (context, request, callback) => {
            if (request.match(antStyles)) return callback();
            if (typeof origExternals[0] === 'function') {
              origExternals[0](context, request, callback);
            } else {
              callback();
            }
          },
          ...(typeof origExternals[0] === 'function' ? [] : origExternals),
        ];

        config.module.rules.unshift({
          test: antStyles,
          use: 'null-loader',
        });
      }
      return config;
    },
    workboxOpts: {
      swDest: 'static/service-worker.js',
    },
    experimental: {
      async rewrites() {
        return [
          {
            source: '/service-worker.js',
            destination: '/_next/static/service-worker.js',
          },
        ];
      },
    },
  }
);
