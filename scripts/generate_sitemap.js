const sitemap = require('nextjs-sitemap-generator');

const cwd = `${process.cwd()}`;

sitemap({
  alternateUrls: {
      en: 'https://flutter-widget.live',
      zh_CN: 'https://flutter-widget.live/zh_CN',
  },
  baseUrl: 'https://flutter-widget.live',
  ignoredPaths: [],
  pagesDirectory: cwd + "/pages",
  targetDirectory : 'public/',
  nextConfigPath: cwd + "/next.config.js",
  ignoredExtensions: [
        'png',
        'jpg'
  ],
  pagesConfig: {
  }
});
