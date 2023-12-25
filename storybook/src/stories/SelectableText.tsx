import React from "react";
import FlutterRenderer from "../components/FlutterRenderer";

interface SelectableTextProps {
}

export const SelectableText = (props: SelectableTextProps) => {
  return (
    <FlutterRenderer {...props} />
  );
};
