import { useRouter, NextRouter } from 'next/router';
import siteConfig from './siteConfig';

const { supportedLanguages } = siteConfig;

export const useCurrentLanguage = (router?: NextRouter) => {
  if (!router) router = useRouter();

  const currentLanguage =
    supportedLanguages[router.pathname.split('/')[1]] ||
    supportedLanguages['en'];

  let setCurrentLanguage = (key) => {
    if (currentLanguage.key === key) return;

    let pathname = router.pathname;
    if (currentLanguage.key !== 'en' && key === 'en') {
      pathname = router.pathname.replace(`/${currentLanguage.key}`, '');
    } else if (currentLanguage.key !== 'en' && currentLanguage.key !== key) {
      pathname = router.pathname.replace(`/${currentLanguage.key}`, `/${key}`);
    } else {
      pathname = `/${key}${router.pathname}`;
    }

    router.push(pathname);
    return null;
  };

  return { currentLanguage, setCurrentLanguage };
};
