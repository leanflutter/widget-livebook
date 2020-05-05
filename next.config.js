const withPlugins = require('next-compose-plugins')
const withCSS = require('@zeit/next-css')
const withSass = require('@zeit/next-sass')
const withFonts = require('next-fonts')
const withMDX = require('./plugins/mdx')({
  extension: /\.(md|mdx)$/,
})
const withOffline = require('next-offline')


module.exports = withPlugins(
  [withCSS, withSass, withFonts, withMDX],
  {
    pageExtensions: ['js', 'jsx', 'ts', 'tsx', 'md', 'mdx'],
    target: 'serverless',
    compress: true,
    enableSvg: true,
    webpack (config) {
      return config
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
        ]
      },
    },
  }
)
