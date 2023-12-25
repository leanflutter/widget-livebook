import React from "react";
import FlutterRenderer from "../components/FlutterRenderer";

interface IconProps {
}

export const Icon = (props: IconProps) => {
  return (
    <FlutterRenderer {...props} />
  );
};
