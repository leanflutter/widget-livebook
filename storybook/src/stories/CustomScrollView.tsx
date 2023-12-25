import React from "react";
import FlutterRenderer from "../components/FlutterRenderer";

interface CustomScrollViewProps {
}

export const CustomScrollView = (props: CustomScrollViewProps) => {
  return (
    <FlutterRenderer {...props} />
  );
};
