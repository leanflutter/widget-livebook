// eslint-disable import/prefer-default-export

const gitHubOrg = `https://github.com/blankapp`;
const homepageUrl = `https://flutter-widget-livebook.blankapp.org`;

export const metadata = {
  title: 'Flutter Widget Livebook',
  description: `Live preview example for flutter widgets.`,
  googleSiteVerification: '',
  latestVersion: 'v1.0',
  homepageUrl,
};

export const url = {
  gitHub: {
    repo: `${gitHubOrg}/flutter-widget-livebook`,
    issues: `${gitHubOrg}/flutter-widget-livebook/issues`,
    releases: `${gitHubOrg}/flutter-widget-livebook/releases`,
    contributors: `${gitHubOrg}/flutter-widget-livebook/graphs/contributors`,
  },

  // Navigation
  home: `${homepageUrl}/basics/introduction/`,
  donate: `${homepageUrl}/basics/donate/`,
};
