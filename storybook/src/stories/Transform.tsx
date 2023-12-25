import React from "react";
import FlutterRenderer from "../components/FlutterRenderer";

interface TransformProps {
}

export const Transform = (props: TransformProps) => {
  return (
    <FlutterRenderer {...props} />
  );
};
