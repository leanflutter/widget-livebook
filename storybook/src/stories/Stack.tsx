import React from "react";
import FlutterRenderer from "../components/FlutterRenderer";

interface StackProps {
}

export const Stack = (props: StackProps) => {
  return (
    <FlutterRenderer {...props} />
  );
};
