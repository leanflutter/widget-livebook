import React from "react";
import FlutterRenderer from "../components/FlutterRenderer";

interface RichTextProps {
}

export const RichText = (props: RichTextProps) => {
  return (
    <FlutterRenderer {...props} />
  );
};
