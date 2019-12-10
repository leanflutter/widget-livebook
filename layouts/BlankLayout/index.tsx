import Head from 'next/head'

const BlankLayout = ({
  children,
  title = 'This is the default title',
}) => {
  return (
    <>
      <Head>
        <title>{title}</title>
        <meta charSet="utf-8" />
        <meta name="viewport" content="initial-scale=1.0, width=device-width" />
      </Head>
      {children}
    </>
  )
}

export default BlankLayout;
