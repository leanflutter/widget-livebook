import React from "react";
import FlutterRenderer from "../components/FlutterRenderer";

interface AnimatedContainerProps {
}

export const AnimatedContainer = (props: AnimatedContainerProps) => {
  return (
    <FlutterRenderer {...props} />
  );
};
