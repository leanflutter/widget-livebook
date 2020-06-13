import React from 'react';
import Head from 'next/head';
// import { useRouter } from 'next/router';
import { Typography, Divider } from 'antd';
import { MDXProvider } from '@mdx-js/react';
// import * as toc from 'markdown-toc';

import { siteConfig } from '../../utils';
import { Ad } from '..';
import TableOfContents from './TableOfContents';

import './index.less';
import './github-markdown.less';

const { Title } = Typography;

interface ArticleContentProps {
  children?: any;
}

const ArticleContent: React.FunctionComponent<ArticleContentProps> = ({
  children,
}) => {
  return (
    <MDXProvider
      components={{
        wrapper: (props: any) => {
          const { frontMatter, tocTree, ...restProps } = props;
          return (
            <>
              <Head>
                <title>{`${frontMatter.title} - ${siteConfig.title}`}</title>
              </Head>
              <div className="article-content">
                <div className="article-body">
                  <Title level={2}>{frontMatter.title}</Title>
                  <Divider />
                  <div className="markdown-body" {...restProps} />
                  <Ad.GoogleAds2 />
                </div>
                <TableOfContents tocTree={tocTree} />
              </div>
            </>
          );
        },
        inlineCode: (props) => {
          if (props.children.indexOf('youtube:') >= 0) {
            return (
              <div
                className="video-container"
                style={{
                  maxWidth: '768px',
                  height: '432px',
                }}
              >
                <iframe
                  width="100%"
                  height="100%"
                  src={`${props.children.replace(
                    'youtube: https://youtu.be/',
                    'https://www.youtube.com/embed/'
                  )}?rel=0`}
                ></iframe>
              </div>
            );
          }
          return (
            <p>
              <code {...props} />
            </p>
          );
        },
      }}
    >
      {children}
    </MDXProvider>
  );
};

export default ArticleContent;
