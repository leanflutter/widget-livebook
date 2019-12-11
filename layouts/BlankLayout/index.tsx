import Head from 'next/head'
import siteConfig from '../../site.config'

const BlankLayout = ({
  children,
}) => {

  let keywords = [
    'Flutter',
    'Flutter Widget',
    'Flutter Widget Livebook',
    'Flutter Widget Example',
    'Flutter Widget Sample',
  ];
  return (
    <>
      <Head>
        <title>
          Flutter Widget Livebook - {siteConfig.metadata.description}
        </title>
        <meta charSet="utf-8" />
        <meta name="description" content={siteConfig.metadata.description} />
        <meta name="keywords" content={keywords.join(',')} />
        <meta name="author" content="LiJianying<lijy91@foxmail.com>" />
        <meta
          name="viewport"
          content="initial-scale=1.0, width=device-width"
        />
      </Head>
      {children}
    </>
  )
}

export default BlankLayout;
