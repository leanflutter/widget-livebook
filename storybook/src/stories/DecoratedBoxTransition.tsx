import React from "react";
import FlutterRenderer from "../components/FlutterRenderer";

interface DecoratedBoxTransitionProps {
}

export const DecoratedBoxTransition = (props: DecoratedBoxTransitionProps) => {
  return (
    <FlutterRenderer {...props} />
  );
};
