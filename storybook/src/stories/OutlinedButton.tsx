import React from "react";
import FlutterRenderer from "../components/FlutterRenderer";

interface OutlinedButtonProps {
}

export const OutlinedButton = (props: OutlinedButtonProps) => {
  return (
    <FlutterRenderer {...props} />
  );
};
