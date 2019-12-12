import { useRouter } from 'next/router'

export const useCurrentLanguage = () => {
  const router = useRouter();

  let currentLanguage = 'en';
  let setCurrentLanguage = (value) => {
    let pathname = router.pathname;

    if (pathname.startsWith('/zh_CN') && value === 'en') {
      pathname = router.pathname.replace('/zh_CN', '');
    } else if (!pathname.startsWith('/zh_CN') && value === 'zh_CN') {
      pathname = `/${value}${router.pathname}`;
    }

    router.push(pathname)
    return null;
  };

  if (router.pathname.startsWith('/zh_CN')) {
    currentLanguage = 'zh_CN';
  }

  return {currentLanguage, setCurrentLanguage};
};
