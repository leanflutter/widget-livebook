import siteConfigJson from './siteConfig.json';

let siteConfig = {
  title: undefined,
  subtitle: undefined,
  description: undefined,
  author: undefined,
  language: undefined,
  supportedLanguages: undefined,
  sidebar: undefined,
  thirdParty: {
    disqus: {
      shortname: `flutter-widget-livebook`,
    },
  },
};

siteConfig = Object.assign(siteConfig, siteConfigJson);

export default siteConfig;
