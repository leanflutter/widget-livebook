import React from "react";
import FlutterRenderer from "../components/FlutterRenderer";

interface RowProps {
}

export const Row = (props: RowProps) => {
  return (
    <FlutterRenderer {...props} />
  );
};
