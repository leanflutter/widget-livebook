import React from 'react';
import { Divider } from 'antd';

import './MarkdownWrapper.less';
import Ad from '../Ads';

const MarkdownWrapper = (props: any) => {
  const { frontMatter, children } = props;

  return (
    <div className="wrapper">
      <h1 className="title">{frontMatter.title}</h1>
      <span>{frontMatter.date || ''}</span>
      <Divider />
      <div className="content markdown-body">{children}</div>
      <Ad.GoogleAds2 />
    </div>
  );
};

export default MarkdownWrapper;
