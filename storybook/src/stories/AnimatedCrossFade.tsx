import React from "react";
import FlutterRenderer from "../components/FlutterRenderer";

interface AnimatedCrossFadeProps {
}

export const AnimatedCrossFade = (props: AnimatedCrossFadeProps) => {
  return (
    <FlutterRenderer {...props} />
  );
};
