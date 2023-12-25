import React from "react";
import FlutterRenderer from "../components/FlutterRenderer";

interface TextFormFieldProps {
}

export const TextFormField = (props: TextFormFieldProps) => {
  return (
    <FlutterRenderer {...props} />
  );
};
