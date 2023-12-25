import React from "react";
import FlutterRenderer from "../components/FlutterRenderer";

interface FormProps {
}

export const Form = (props: FormProps) => {
  return (
    <FlutterRenderer {...props} />
  );
};
