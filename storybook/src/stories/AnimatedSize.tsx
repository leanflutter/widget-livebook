import React from "react";
import FlutterRenderer from "../components/FlutterRenderer";

interface AnimatedSizeProps {
}

export const AnimatedSize = (props: AnimatedSizeProps) => {
  return (
    <FlutterRenderer {...props} />
  );
};
