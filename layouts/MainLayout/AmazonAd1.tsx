import { useEffect } from 'react';

declare let window: any;

const AmazonAd1 = () => {
  return (
    <>
      <div
        style={{
          display: 'flex',
          justifyContent: 'center',
          paddingTop: '40px',
        }}
      >
        <iframe
          src={`//rcm-na.amazon-adsystem.com/e/cm?o=1&p=48&l=ur1&category=amazonhomepage&f=ifr&linkID=b5350d4a6d075902d234512fcecd55ab&t=flutterwidget-20&tracking_id=flutterwidget-20`}
          width="728"
          height="90"
          scrolling="no"
          style={{ border: 'none' }}
        ></iframe>
      </div>
    </>
  );
};

export default AmazonAd1;
