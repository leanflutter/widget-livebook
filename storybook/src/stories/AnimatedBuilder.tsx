import React from "react";
import FlutterRenderer from "../components/FlutterRenderer";

interface AnimatedBuilderProps {
}

export const AnimatedBuilder = (props: AnimatedBuilderProps) => {
  return (
    <FlutterRenderer {...props} />
  );
};
