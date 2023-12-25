import React from "react";
import FlutterRenderer from "../components/FlutterRenderer";

interface DataTableProps {
}

export const DataTable = (props: DataTableProps) => {
  return (
    <FlutterRenderer {...props} />
  );
};
