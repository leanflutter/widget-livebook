import React from 'react';
import Head from 'next/head';
import { useRouter } from 'next/router';
import { Typography, Divider } from 'antd';
import { MDXProvider } from '@mdx-js/react';
import * as toc from 'markdown-toc';

import { siteConfig } from '../../utils';
import { Ad, Code, CodeExample } from '..';
import TableOfContents from './TableOfContents';

import './index.less';
// import './github-markdown.less';

const { Title } = Typography;

const preToCodeBlock = (preProps: any) => {
  if (
    // children is code element
    preProps.children &&
    // code props
    preProps.children.props &&
    // if children is actually a <code>
    preProps.children.props.mdxType === 'code'
  ) {
    // we have a <pre><code> situation
    const {
      children: codeString,
      className = '',
      ...props
    } = preProps.children.props;

    const match = className.match(/language-([\0-\uFFFF]*)/);

    return {
      codeString: codeString.trim(),
      className,
      language: match != null ? match[1] : '',
      ...props,
    };
  }
  return undefined;
};

interface ArticleContentProps {
  children?: any;
}

const ArticleContent: React.FunctionComponent<ArticleContentProps> = ({
  children,
}) => {
  const router = useRouter();
  return (
    <MDXProvider
      components={{
        wrapper: (props: any) => {
          const { frontMatter, tocTree, ...restProps } = props;

          let keywords = [
            'Flutter',
            'Flutter Widget',
            'Flutter Widget Livebook',
            'Flutter Widget Example',
            'Flutter Widget Sample',
          ];
          if (router.pathname.indexOf('/widgets/') >= 0) {
            keywords = [
              `Flutter ${frontMatter.title} Example`,
              `Flutter ${frontMatter.title} Sample`,
              `${frontMatter.title} Example`,
              `${frontMatter.title} Sample`,
              `Flutter ${frontMatter.title} 示例`,
              `Flutter ${frontMatter.title} 范例`,
              `Flutter ${frontMatter.title} 範例`,
              `${frontMatter.title} 示例`,
              `${frontMatter.title} 范例`,
              `${frontMatter.title} 範例`,
            ];
          }
          return (
            <>
              <Head>
                <title>{`${frontMatter.title} - ${siteConfig.title}`}</title>
                <meta charSet="utf-8" />
                <meta
                  name="description"
                  content={`${frontMatter.title}${
                    frontMatter.title ? ' | ' : ''
                  }Flutter Widget Livebook`}
                />
                <meta name="keywords" content={keywords.join(',')} />
                <meta name="author" content="LiJianying<lijy91@foxmail.com>" />
                <meta
                  name="viewport"
                  content="initial-scale=1.0, width=device-width"
                />
              </Head>
              <div className="article-content">
                <div className="article-body">
                  <Title level={2}>{frontMatter.title}</Title>
                  <Divider />
                  <div className="markdown-body" {...restProps} />
                  <Ad.GoogleAds2 />
                </div>
                <TableOfContents tocTree={tocTree} />
                <div
                  className="telegram-floating-button"
                  style={{
                    position: 'fixed',
                    zIndex: 1000000,
                    fontWeight: 'bold',
                  }}
                >
                  <a href="https://t.me/flutterwidgetlivebook">
                    <img
                      alt=""
                      src="https://img.shields.io/badge/chat%20on-telegram-blue.svg?style=for-the-badge&labelColor=000000&logo=telegram"
                    ></img>
                  </a>
                </div>
              </div>
            </>
          );
        },

        h2: (props) => {
          const slug = toc.slugify(props.children);
          return (
            <>
              <a id={slug} href={`#${slug}`}></a>
              <h2 {...props} />
            </>
          );
        },
        h3: (props) => {
          const slug = toc.slugify(props.children);
          return (
            <>
              <a id={slug} href={`#${slug}`}></a>
              <h3 {...props} />
            </>
          );
        },
        h4: (props) => {
          const slug = toc.slugify(props.children);
          return (
            <>
              <a id={slug} href={`#${slug}`}></a>
              <h4 {...props} />
            </>
          );
        },
        h5: (props) => {
          const slug = toc.slugify(props.children);
          return (
            <>
              <a id={slug} href={`#${slug}`}></a>
              <h5 {...props} />
            </>
          );
        },
        pre: (props) => {
          let codeProps = preToCodeBlock(props);

          if (codeProps.liveslice) {
            let livesliceUrl = '/uiexplorer/index.html#/Slice';
            let livesliceHeight = codeProps.height || '260px';

            if (codeProps.mockup) {
              livesliceHeight = '667px';
            }

            return (
              <CodeExample
                data={[
                  {
                    codeProps: codeProps,
                    content: (
                      <div
                        style={{
                          width: '100%',
                          minHeight: '260px',
                        }}
                      >
                        <iframe
                          className="livesample"
                          style={{
                            width: '100%',
                            height: livesliceHeight,
                          }}
                          src={`${livesliceUrl}${codeProps.liveslice}`}
                          scrolling="no"
                        />
                      </div>
                    ),
                  },
                ]}
              />
            );
          }
          return <Code {...codeProps} />;
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
