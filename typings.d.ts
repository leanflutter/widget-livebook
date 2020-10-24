declare module 'markdown-toc';
declare module '@mdx-js/react';
declare module '*.mdx' {
  let MDXComponent: (props: any) => JSX.Element;
  export default MDXComponent;
}
