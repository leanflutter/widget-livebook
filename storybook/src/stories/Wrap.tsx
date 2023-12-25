import React from "react";
import FlutterRenderer from "../components/FlutterRenderer";

interface WrapProps {
}

export const Wrap = (props: WrapProps) => {
  return (
    <FlutterRenderer {...props} />
  );
};
