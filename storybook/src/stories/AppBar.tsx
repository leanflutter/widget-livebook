import React from "react";
import FlutterRenderer from "../components/FlutterRenderer";

interface AppBarProps {
}

export const AppBar = (props: AppBarProps) => {
  return (
    <FlutterRenderer {...props} />
  );
};
