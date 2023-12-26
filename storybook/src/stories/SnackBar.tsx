import React from "react";
import FlutterRenderer from "../components/FlutterRenderer";

interface SnackBarProps {
}

export const SnackBar = (props: SnackBarProps) => {
  return (
    <FlutterRenderer {...props} />
  );
};
