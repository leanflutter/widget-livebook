import React from "react";
import FlutterRenderer from "../components/FlutterRenderer";

interface ImageProps {
}

export const Image = (props: ImageProps) => {
  return (
    <FlutterRenderer {...props} />
  );
};
