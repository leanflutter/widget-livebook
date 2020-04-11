import React, { useEffect } from 'react';
import { useRouter } from 'next/router';
import { useCurrentLanguage } from '../utils';

const HomePage = () => {
  const router = useRouter();
  const { currentLanguage } = useCurrentLanguage();

  useEffect(() => {
    const patchnameLanguage =
      currentLanguage.value === 'en' ? '' : `${currentLanguage.value}/`;
    if (router.pathname == '/') {
      router.push(`/${patchnameLanguage}basics/introduction`);
    }
  });

  return (
    <>
      <p>&nbsp;</p>
    </>
  );
};

export default HomePage;
