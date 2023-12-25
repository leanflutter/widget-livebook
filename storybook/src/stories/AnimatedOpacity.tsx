import React from "react";
import FlutterRenderer from "../components/FlutterRenderer";

interface AnimatedOpacityProps {
}

export const AnimatedOpacity = (props: AnimatedOpacityProps) => {
  return (
    <FlutterRenderer {...props} />
  );
};
