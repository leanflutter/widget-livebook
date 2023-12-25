import React from "react";
import FlutterRenderer from "../components/FlutterRenderer";

interface DismissibleProps {
}

export const Dismissible = (props: DismissibleProps) => {
  return (
    <FlutterRenderer {...props} />
  );
};
