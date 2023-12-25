import React from "react";
import FlutterRenderer from "../components/FlutterRenderer";

interface ElevatedButtonProps {
}

export const ElevatedButton = (props: ElevatedButtonProps) => {
  return (
    <FlutterRenderer {...props} />
  );
};
