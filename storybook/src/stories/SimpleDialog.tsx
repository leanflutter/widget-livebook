import React from "react";
import FlutterRenderer from "../components/FlutterRenderer";

interface SimpleDialogProps {
}

export const SimpleDialog = (props: SimpleDialogProps) => {
  return (
    <FlutterRenderer {...props} />
  );
};
