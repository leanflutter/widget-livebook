import React from 'react';
import LazyLoad from 'react-lazyload';

interface ImageProps
  extends React.DetailedHTMLProps<
    React.ImgHTMLAttributes<HTMLImageElement>,
    HTMLImageElement
  > {
  fadeIn?: any;
  width?: number | string;
  height?: number | string;
}

const Image = ({
  className,
  fadeIn,
  src,
  width,
  height,
  ...restProps
}: ImageProps) => {
  return (
    <LazyLoad>
      <img
        className={[`${className || ''}`, `${fadeIn && 'fade-in'}`].join(' ')}
        src={src}
        alt=""
        style={{
          width,
          height,
        }}
        {...restProps}
      />
    </LazyLoad>
  );
};

export default Image;
