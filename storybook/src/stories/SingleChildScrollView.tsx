import React from "react";
import FlutterRenderer from "../components/FlutterRenderer";

interface SingleChildScrollViewProps {
}

export const SingleChildScrollView = (props: SingleChildScrollViewProps) => {
  return (
    <FlutterRenderer {...props} />
  );
};
