import React from "react";
import FlutterRenderer from "../components/FlutterRenderer";

interface TextButtonProps {
}

export const TextButton = (props: TextButtonProps) => {
  return (
    <FlutterRenderer {...props} />
  );
};
