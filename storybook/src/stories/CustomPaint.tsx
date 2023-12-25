import React from "react";
import FlutterRenderer from "../components/FlutterRenderer";

interface CustomPaintProps {
}

export const CustomPaint = (props: CustomPaintProps) => {
  return (
    <FlutterRenderer {...props} />
  );
};
