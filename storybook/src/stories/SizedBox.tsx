import React from "react";
import FlutterRenderer from "../components/FlutterRenderer";

interface SizedBoxProps {
}

export const SizedBox = (props: SizedBoxProps) => {
  return (
    <FlutterRenderer {...props} />
  );
};
