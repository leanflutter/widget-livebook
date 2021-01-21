const WwAds = ({ style }: any) => {
  return (
    <>
      <div
        className="wwads-cn wwads-horizontal"
        data-id="52"
        style={{ maxWidth: '350px' }}
        ref={(el) => {
          if (!el || typeof window === 'undefined' || window.innerWidth < 1400)
            return;
          if (el.children.length > 0) return;

          let s = document.createElement('script');
          s.src = '//wwads.cn/code/install';
          s.setAttribute('id', '_wwadscnjs');
          s.async = true;

          (
            document.getElementsByTagName('head')[0] ||
            document.getElementsByTagName('body')[0]
          ).appendChild(s);
        }}
      />
    </>
  );
};

export default WwAds;
