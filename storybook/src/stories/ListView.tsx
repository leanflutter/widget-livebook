import React from "react";
import FlutterRenderer from "../components/FlutterRenderer";

interface ListViewProps {
}

export const ListView = (props: ListViewProps) => {
  return (
    <FlutterRenderer {...props} />
  );
};
