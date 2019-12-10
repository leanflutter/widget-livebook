import React from "react";
import Router, { useRouter } from "next/router";
import { NavSection, NavLink, NavSectionTitle, NavPanel } from "@duik/it";
import Icon from "@duik/icon";
import classNames from "classnames";
import NProgress from "nprogress";

import links4basics from "../../pages/basics/_links.json";
import links4widgets from "../../pages/widgets/_links.json";

import './LayoutSidebar.module.scss'

const generateMenuLinks = () => [
  {
    title: "Basics",
    links: links4basics
  },
  {
    title: "Widgets",
    links: links4widgets
  }
];

Router.events.on("routeChangeComplete", url => {
  NProgress.done();
});

const LayoutSidebarNavLink = ({ children, href, className = "", ...rest }) => {
  const router = useRouter();

  const handleClick = e => {
    e.preventDefault();
    NProgress.start();
    router.push(href);
  };

  return (
    <a
      href={href}
      onClick={handleClick}
      className={classNames(
        className,
        router.pathname === href ? "active" : ""
      )}
      {...rest}
    >
      {children}
    </a>
  );
};

const LayoutSidebar = ({
  menuIsVisible,
}: any) => {
  return (
    <>
      <NavPanel
        className={classNames(
          "main-side-bar",
          {
            ['main-side-bar-open']: menuIsVisible
          }
        )}
        style={{ position: "relative", zIndex: 10 }}
      >
        <NavSection>
          {generateMenuLinks().map(section => (
            <NavSection key={section.title}>
              <NavSectionTitle>{section.title}</NavSectionTitle>
              {section.links.map(item => {
                return (
                  <NavLink
                    href={`${item.path}`}
                    Component={LayoutSidebarNavLink}
                    key={item.path}
                    rightEl={<Icon>arrow_right</Icon>}
                    highlighted
                  >
                    {item.title}
                  </NavLink>
                );
              })}
            </NavSection>
          ))}
        </NavSection>
      </NavPanel>
    </>
  );
};

export default LayoutSidebar;
