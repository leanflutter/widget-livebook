declare module 'react-shadow' {
  import { ReactNode, ComponentType } from 'react';
  type RenderElement = keyof HTMLElementTagNameMap;
  type Root = {
    [name in RenderElement]: ComponentType;
  };
  const root: Root;
  export default root;
}
declare module '*.txt';
