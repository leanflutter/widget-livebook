import Router from 'next/router';
import { ContainerHorizontal, ContainerVertical } from '@duik/it';

import { useCurrentLanguage, useMenuVisibility } from '../../utils';

import LayoutNavbar from './LayoutNavbar';
import LayoutSidebar from './LayoutSidebar';
import LayoutContent from './LayoutContent';

import './index.module.scss';

const MainLayout = ({ children }) => {
  const {
    isVisible: menuIsVisible,
    handleClose: menuHandleClose,
    handleToggle: menuHandleToggle,
  } = useMenuVisibility();
  const { currentLanguage } = useCurrentLanguage();

  Router.events.on('routeChangeComplete', (_) => {
    if (menuIsVisible) menuHandleClose();
  });

  return (
    <>
      <div
        className={`main ${currentLanguage.dir || ''}`}
        {...(currentLanguage.dir === 'rtl' ? { dir: 'rtl' } : {})}
      >
        <ContainerVertical>
          <LayoutNavbar {...{ menuIsVisible, menuHandleToggle }} />
          <ContainerHorizontal style={{ overflow: 'hidden' }}>
            <LayoutSidebar {...{ menuIsVisible }} />
            <LayoutContent children={children} />
          </ContainerHorizontal>
        </ContainerVertical>
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
};

export default MainLayout;
