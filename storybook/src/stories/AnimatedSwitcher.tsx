import React from "react";
import FlutterRenderer from "../components/FlutterRenderer";

interface AnimatedSwitcherProps {
}

export const AnimatedSwitcher = (props: AnimatedSwitcherProps) => {
  return (
    <FlutterRenderer {...props} />
  );
};
