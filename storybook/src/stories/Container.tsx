import React from "react";
import FlutterRenderer from "../components/FlutterRenderer";

interface ContainerProps {
}

export const Container = (props: ContainerProps) => {
  return (
    <FlutterRenderer {...props} />
  );
};
