import { useRouter } from 'next/router';
import { SelectLanguage } from '../components';

const supportedLanguages = SelectLanguage.supportedLanguages;

export const useCurrentLanguage = () => {
  const router = useRouter();

  const currentLanguage =
    supportedLanguages.find((v) => router.pathname.split('/')[1] === v.value) ||
    supportedLanguages[0];

  let setCurrentLanguage = (value) => {
    if (currentLanguage.value === value) return;

    let pathname = router.pathname;
    if (currentLanguage.value !== 'en' && value === 'en') {
      pathname = router.pathname.replace(`/${currentLanguage.value}`, '');
    } else if (
      currentLanguage.value !== 'en' &&
      currentLanguage.value !== value
    ) {
      pathname = router.pathname.replace(
        `/${currentLanguage.value}`,
        `/${value}`
      );
    } else {
      pathname = `/${value}${router.pathname}`;
    }

    router.push(pathname);
    return null;
  };

  return { currentLanguage, setCurrentLanguage };
};
