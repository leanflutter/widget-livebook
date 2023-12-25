import React from "react";
import FlutterRenderer from "../components/FlutterRenderer";

interface ScrollbarProps {
}

export const Scrollbar = (props: ScrollbarProps) => {
  return (
    <FlutterRenderer {...props} />
  );
};
