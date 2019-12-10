import * as React from "react";
import Router from 'next/router'
import classnames from "classnames";

import "./page-scroll.module.scss";

export const PageScroll = (props: any) => {
  const { router, className, ...rest } = props;

  const ref = React.createRef<HTMLDivElement>();

  Router.events.on('routeChangeComplete', (_) => {
    if (ref && ref.current)
      ref.current.scrollTo({
        top: 0,
        behavior: 'auto',
      });
  })

  return (
    <div
      ref={ref}
      {...rest}
      className={classnames('pagescroll', className)}
    />
  );
};
