import React from "react";
import FlutterRenderer from "../components/FlutterRenderer";

interface TextProps {
}

export const Text = (props: TextProps) => {
  return (
    <FlutterRenderer {...props} />
  );
};
