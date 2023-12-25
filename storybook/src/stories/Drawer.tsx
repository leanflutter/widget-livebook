import React from "react";
import FlutterRenderer from "../components/FlutterRenderer";

interface DrawerProps {
}

export const Drawer = (props: DrawerProps) => {
  return (
    <FlutterRenderer {...props} />
  );
};
