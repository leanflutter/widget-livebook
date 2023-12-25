import React from "react";
import FlutterRenderer from "../components/FlutterRenderer";

interface ColumnProps {
}

export const Column = (props: ColumnProps) => {
  return (
    <FlutterRenderer {...props} />
  );
};
