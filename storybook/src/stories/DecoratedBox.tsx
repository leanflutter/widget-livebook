import React from "react";
import FlutterRenderer from "../components/FlutterRenderer";

interface DecoratedBoxProps {
}

export const DecoratedBox = (props: DecoratedBoxProps) => {
  return (
    <FlutterRenderer {...props} />
  );
};
