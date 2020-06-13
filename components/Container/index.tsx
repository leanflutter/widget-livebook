import React from 'react';
import classNames from 'classnames';

import './index.less';

interface ContainerProps
  extends React.DetailedHTMLProps<
    React.HTMLAttributes<HTMLDivElement>,
    HTMLDivElement
  > {
  children?: any;
  fluid?: boolean;
}

const Container = ({ className, fluid, ...restProps }: ContainerProps) => {
  return (
    <div
      className={classNames([
        'container',
        className,
        { 'container-fluid': fluid },
      ])}
      {...restProps}
    />
  );
};

export default Container;
