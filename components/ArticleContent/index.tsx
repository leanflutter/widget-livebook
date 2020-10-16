import React from 'react';
import Head from 'next/head';
import { useRouter } from 'next/router';
import { Typography, Divider } from 'antd';
import { MDXProvider } from '@mdx-js/react';

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
                <div className="telegram-chat--container">
                  <a
                    className="telegram-chat--button"
                    href="https://t.me/flutterwidgetlivebook"
                    target="_blank"
                  >
                    <img
                      src="data:image/png;base64,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"
                      alt="background"
                    />
                  </a>
                </div>
              </div>
            </>
          );
        },

        h2: (props) => {
          const slug = encodeURI(props.children);
          return (
            <>
              <a id={slug} href={`#${slug}`}></a>
              <h2 {...props} />
            </>
          );
        },
        h3: (props) => {
          const slug = encodeURI(props.children);
          return (
            <>
              <a id={slug} href={`#${slug}`}></a>
              <h3 {...props} />
            </>
          );
        },
        h4: (props) => {
          const slug = encodeURI(props.children);
          return (
            <>
              <a id={slug} href={`#${slug}`}></a>
              <h4 {...props} />
            </>
          );
        },
        h5: (props) => {
          const slug = encodeURI(props.children);
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
            let livesliceUrl = '/snippets/index.html#/Snippet';
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
