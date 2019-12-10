import React from 'react';
import {
  TopBar,
  TopBarSection,
  TopBarTitle,
  Button,
} from '@duik/it';
import Link from 'next/link';
import { NavBurger } from '../../components'
import siteConfing from '../../site.config';

import './LayoutNavbar.module.scss'

const LayoutNavbar = ({
  menuIsVisible,
  menuHandleToggle,
}: any) => {
  return (
    <TopBar className="main-top-bar">
      <Button
        className={'main-top-bar-menu-btn'}
        onClick={menuHandleToggle}
      >
        <NavBurger isOpen={menuIsVisible} />
      </Button>
      <TopBarSection>
        <TopBarTitle>
          <a
            href={siteConfing.metadata.homepageUrl}
            style={{
              display: 'flex',
            }}
          >
            <img
              src="/images/logo.png"
              style={{
                height: '26px',
              }}
            />
          </a>
        </TopBarTitle>
      </TopBarSection>
      <TopBarSection  className="main-top-bar-right-section">
        <Button
          Component="a"
          href="/examples"
          clear
        >
          Live Examples
        </Button>
        <Button
          Component="a"
          href={siteConfing.metadata.githubRepoUrl}
          target="_blank"
          primary
        >
          GitHub
        </Button>
      </TopBarSection>
    </TopBar>
  );
};

export default LayoutNavbar
