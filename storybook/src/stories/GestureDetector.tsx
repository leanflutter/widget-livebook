import React from "react";
import FlutterRenderer from "../components/FlutterRenderer";

interface GestureDetectorProps {
}

export const GestureDetector = (props: GestureDetectorProps) => {
  return (
    <FlutterRenderer {...props} />
  );
};
