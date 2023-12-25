import React from "react";
import FlutterRenderer from "../components/FlutterRenderer";

interface TextFieldProps {
}

export const TextField = (props: TextFieldProps) => {
  return (
    <FlutterRenderer {...props} />
  );
};
