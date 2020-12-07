const CarbonAd = ({ style }: any) => {
  return (
    <div
      style={
        style || {
          marginTop: '30px',
          minHeight: '144px',
        }
      }
      ref={(el) => {
        if (!el || typeof window === 'undefined' || window.innerWidth < 1400)
          return;
        if (el.children.length > 0) return;

        let s = document.createElement('script');
        s.src =
          '//cdn.carbonads.com/carbon.js?serve=CKYIT23U&placement=blankapporg';
        s.setAttribute('id', '_carbonads_js');
        s.async = true;

        el.appendChild(s);
      }}
    />
  );
};

export default CarbonAd;
