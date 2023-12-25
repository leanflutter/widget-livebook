import React from "react";
import FlutterRenderer from "../components/FlutterRenderer";

interface ReorderableListViewProps {
}

export const ReorderableListView = (props: ReorderableListViewProps) => {
  return (
    <FlutterRenderer {...props} />
  );
};
