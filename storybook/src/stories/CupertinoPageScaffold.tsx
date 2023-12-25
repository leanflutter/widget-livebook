import React from "react";
import FlutterRenderer from "../components/FlutterRenderer";

interface CupertinoPageScaffoldProps {
}

export const CupertinoPageScaffold = (props: CupertinoPageScaffoldProps) => {
  return (
    <FlutterRenderer {...props} />
  );
};
