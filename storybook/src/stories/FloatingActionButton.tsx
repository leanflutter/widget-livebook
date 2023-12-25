import React from "react";
import FlutterRenderer from "../components/FlutterRenderer";

interface FloatingActionButtonProps {
}

export const FloatingActionButton = (props: FloatingActionButtonProps) => {
  return (
    <FlutterRenderer {...props} />
  );
};
