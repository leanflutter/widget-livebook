import Router from 'next/router'
import { ContainerHorizontal, ContainerVertical } from "@duik/it";
import { useMenuVisibility } from '../../utils'

import LayoutNavbar from "./LayoutNavbar";
import LayoutSidebar from "./LayoutSidebar";
import LayoutContent from "./LayoutContent";

import "./index.module.scss";

const MainLayout = ({ children }) => {
  const {
    isVisible: menuIsVisible,
    handleClose: menuHandleClose,
    handleToggle: menuHandleToggle,
  } = useMenuVisibility();

  Router.events.on('routeChangeComplete', (_) => {
    if (menuIsVisible)
      menuHandleClose()
  })

  return (
    <>
      <div className="main">
        <ContainerVertical>
          <LayoutNavbar
            {...{menuIsVisible, menuHandleToggle}}
          />
          <ContainerHorizontal style={{ overflow: "hidden" }}>
            <LayoutSidebar
              {...{menuIsVisible}}
            />
            <LayoutContent children={children} />
          </ContainerHorizontal>
        </ContainerVertical>
      </div>
      <div
        style={{
          position: 'fixed',
          right: '40px',
          bottom: '20px',
          zIndex: 1000000,
          fontWeight: 'bold',
        }}
      >
        <a href="https://t.me/flutterwidgetlivebook">
          <img alt="" src="https://img.shields.io/badge/chat%20on-telegram-blue.svg?style=for-the-badge&labelColor=000000&logo=telegram"></img>
        </a>
      </div>
    </>
  );
};

export default MainLayout;
