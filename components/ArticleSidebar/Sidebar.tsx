import React from 'react';
import Link from 'next/link';
import Router, { useRouter } from 'next/router';
import { RightOutlined } from '@ant-design/icons';
import NProgress from 'nprogress';
import classNames from 'classnames';
import { useCurrentLanguage } from '../../utils/useCurrentLanguage';
import siteConfig from '../../utils/siteConfig';

import './Sidebar.less';

Router.events.on('routeChangeComplete', (url) => {
  NProgress.done();
  window.scrollTo(0, 0);
});

const SidebarSubPathItem = ({ children, href, className = '', ...rest }) => {
  const router = useRouter();

  const handleClick = (e) => {
    e.preventDefault();
    NProgress.start();
    router.push(href);
  };

  return (
    <a
      className={classNames(
        'subpath-item',
        router.pathname !== href ? '' : 'active'
      )}
      href={href}
      onClick={handleClick}
      {...rest}
    >
      <label>{children}</label>
      <RightOutlined />
    </a>
  );
};

// interface SidebarProps {
// }

const Sidebar = () => {
  const { currentLanguage } = useCurrentLanguage();
  const sidebar: any = siteConfig.sidebar || {};

  let sections = sidebar['/'];
  if (currentLanguage.key !== 'en') {
    sections = sidebar[`/${currentLanguage.key}`];
  }
  return (
    <div className="sidebar">
      {sections.map((section: any) => {
        const { key, key: title, children: subPaths } = section;
        return (
          <div key={key} className="section-item">
            <label>{title.toUpperCase()}</label>
            <div className="section-item-subpaths">
              {subPaths.map((subPath: any) => {
                return (
                  <SidebarSubPathItem
                    key={subPath.path}
                    href={`${subPath.path}`}
                  >
                    {subPath.title}
                  </SidebarSubPathItem>
                );
              })}
            </div>
          </div>
        );
      })}
    </div>
  );
};

export default Sidebar;
