import React from "react";
import FlutterRenderer from "../components/FlutterRenderer";

interface TableProps {
}

export const Table = (props: TableProps) => {
  return (
    <FlutterRenderer {...props} />
  );
};
