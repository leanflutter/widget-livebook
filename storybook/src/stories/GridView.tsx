import React from "react";
import FlutterRenderer from "../components/FlutterRenderer";

interface GridViewProps {
}

export const GridView = (props: GridViewProps) => {
  return (
    <FlutterRenderer {...props} />
  );
};
