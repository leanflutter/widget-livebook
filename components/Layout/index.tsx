import React from 'react';
import Link from 'next/link';
import Head from 'next/head';
import { useRouter } from 'next/router';
import { Button, Divider, Input, Layout as LayoutComp, Menu } from 'antd';
import { GithubOutlined } from '@ant-design/icons';
import classNames from 'classnames';

import { siteConfig, useCurrentLanguage, useMenuVisibility } from '../../utils';
import { Container, SelectLanguage } from '..';

import './index.less';

interface LayoutProps {
  children?: any;
  title?: string;
  titleTrailing?: string;
}

const Layout: React.FunctionComponent<LayoutProps> = ({
  children,
  title = '',
  titleTrailing = ` - ${siteConfig.title}`,
}) => {
  const {
    isVisible: menuIsVisible,
    handleClose: menuHandleClose,
    handleToggle: menuHandleToggle,
  } = useMenuVisibility();
  const { currentLanguage } = useCurrentLanguage();
  const router = useRouter();
  const user: any = null;

  return (
    <>
      <Head>
        <title>{`${title}${titleTrailing}`}</title>
      </Head>
      <LayoutComp
        className={classNames(['layout', currentLanguage.dir])}
        dir={currentLanguage.dir}
      >
        <LayoutComp.Header>
          <Container fluid>
            <Link href="/">
              <div className="brand">
                <img src="/images/logo.png" alt={`${title}${titleTrailing}`} />
              </div>
            </Link>
            <div style={{ width: '34px' }} />
            <Menu
              mode="horizontal"
              openKeys={[router.pathname]}
              selectedKeys={[router.pathname]}
            >
              <Menu.Item key="/packages">
                <Link href="/packages">
                  <a>Packages</a>
                </Link>
              </Menu.Item>
            </Menu>
            {/* <Input.Search
              placeholder="Search or jump to..."
              onSearch={(value) => console.log(value)}
              style={{ width: '280px' }}
            /> */}
            <div style={{ flex: 1 }} />
            {!user && (
              <>
                <SelectLanguage />
                <Divider
                  type="vertical"
                  style={{
                    marginLeft: '24px',
                    marginRight: '24px',
                    height: '32px',
                  }}
                />
                <Button type="primary">
                  <a
                    target="__blank"
                    href="https://github.com/leanflutter/flutter-widget-livebook"
                  >
                    GitHub
                  </a>
                </Button>
              </>
            )}
          </Container>
        </LayoutComp.Header>
        <LayoutComp.Content>{children}</LayoutComp.Content>
      </LayoutComp>
    </>
  );
};

export default Layout;
