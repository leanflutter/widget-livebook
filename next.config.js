const withPlugins = require('next-compose-plugins')
const withCSS = require('@zeit/next-css')
const withSass = require('@zeit/next-sass')
const withFonts = require('next-fonts')
const withMDX = require('./plugins/mdx')({
  extension: /\.(md|mdx)$/,
})

module.exports = withPlugins(
  [withCSS, withSass, withFonts, withMDX],
  {
    target: 'serverless',
    enableSvg: true,
    webpack (config) {
      return config
    },
    pageExtensions: ['js', 'jsx', 'ts', 'tsx', 'md', 'mdx'],
  }
)
