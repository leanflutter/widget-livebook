import React from "react";
import FlutterRenderer from "../components/FlutterRenderer";

interface PlaceholderProps {
}

export const Placeholder = (props: PlaceholderProps) => {
  return (
    <FlutterRenderer {...props} />
  );
};
