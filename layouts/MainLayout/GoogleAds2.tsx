import { useEffect } from 'react';

declare let window: any;

const GoogleAds2 = () => {
  useEffect(() => {
    let timer = setInterval(() => {
      let adsbygoogle = window.adsbygoogle || [];

      if (typeof adsbygoogle === 'undefined') return;
      adsbygoogle.push({});
      clearInterval(timer);
    }, 500);
  });

  return (
    <div
      style={{ display: 'flex', justifyContent: 'center', paddingTop: '40px' }}
    >
      <ins
        className="adsbygoogle"
        style={{ display: 'inline-block', width: '100%', height: '160px' }}
        data-ad-client="ca-pub-6049036475236211"
        data-ad-slot="1942448283"
      ></ins>
    </div>
  );
};

export default GoogleAds2;
