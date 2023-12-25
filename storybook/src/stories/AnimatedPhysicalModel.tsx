import React from "react";
import FlutterRenderer from "../components/FlutterRenderer";

interface AnimatedPhysicalModelProps {
}

export const AnimatedPhysicalModel = (props: AnimatedPhysicalModelProps) => {
  return (
    <FlutterRenderer {...props} />
  );
};
