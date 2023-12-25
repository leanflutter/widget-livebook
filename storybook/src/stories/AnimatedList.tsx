import React from "react";
import FlutterRenderer from "../components/FlutterRenderer";

interface AnimatedListProps {
}

export const AnimatedList = (props: AnimatedListProps) => {
  return (
    <FlutterRenderer {...props} />
  );
};
