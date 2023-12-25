import React from "react";
import FlutterRenderer from "../components/FlutterRenderer";

interface ScaffoldProps {
}

export const Scaffold = (props: ScaffoldProps) => {
  return (
    <FlutterRenderer {...props} />
  );
};
