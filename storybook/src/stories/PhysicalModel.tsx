import React from "react";
import FlutterRenderer from "../components/FlutterRenderer";

interface PhysicalModelProps {
}

export const PhysicalModel = (props: PhysicalModelProps) => {
  return (
    <FlutterRenderer {...props} />
  );
};
