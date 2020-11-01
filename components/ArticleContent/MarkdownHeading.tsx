import React from 'react';

import './MarkdownHeading.less';

const H1 = (props: any) => {
  const slug = encodeURI(props.children);
  return (
    <h1 className="heading">
      <span {...props} />
      <a id={slug} href={`#${slug}`} />
    </h1>
  );
};

const H2 = (props: any) => {
  const slug = encodeURI(props.children);
  return (
    <h2 className="heading">
      <span {...props} />
      <a id={slug} href={`#${slug}`} />
    </h2>
  );
};

const H3 = (props: any) => {
  const slug = encodeURI(props.children);
  return (
    <h3 className="heading">
      <span {...props} />
      <a id={slug} href={`#${slug}`} />
    </h3>
  );
};

const H4 = (props: any) => {
  const slug = encodeURI(props.children);
  return (
    <h4 className="heading">
      <span {...props} />
      <a id={slug} href={`#${slug}`} />
    </h4>
  );
};

const H5 = (props: any) => {
  const slug = encodeURI(props.children);
  return (
    <h5 className="heading">
      <span {...props} />
      <a id={slug} href={`#${slug}`} />
    </h5>
  );
};

export default {
  H1,
  H2,
  H3,
  H4,
  H5,
};
