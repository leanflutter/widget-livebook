import React from "react";
import FlutterRenderer from "../components/FlutterRenderer";

interface CupertinoButtonProps {
}

export const CupertinoButton = (props: CupertinoButtonProps) => {
  return (
    <FlutterRenderer {...props} />
  );
};
