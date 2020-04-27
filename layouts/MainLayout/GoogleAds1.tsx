import { useEffect } from 'react';

declare let window: any;

const GoogleAds1 = () => {
  useEffect(() => {
    let adsbygoogle = window.adsbygoogle || [];
    adsbygoogle.push({});
  });

  return (
    <>
      <ins
        className="adsbygoogle"
        style={{
          display: 'inline-block',
          width: '250px',
          height: '180px',
        }}
        data-ad-client="ca-pub-6049036475236211"
        data-ad-slot="2682747489"
      />
    </>
  );
};

export default GoogleAds1;
