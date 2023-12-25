import React from "react";
import FlutterRenderer from "../components/FlutterRenderer";

interface FlatButtonProps {
}

export const FlatButton = (props: FlatButtonProps) => {
  return (
    <FlutterRenderer {...props} />
  );
};
