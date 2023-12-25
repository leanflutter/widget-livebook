import React from "react";
import FlutterRenderer from "../components/FlutterRenderer";

interface PageViewProps {
}

export const PageView = (props: PageViewProps) => {
  return (
    <FlutterRenderer {...props} />
  );
};
