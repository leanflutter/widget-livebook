import React from "react";
import FlutterRenderer from "../components/FlutterRenderer";

interface DraggableProps {
}

export const Draggable = (props: DraggableProps) => {
  return (
    <FlutterRenderer {...props} />
  );
};
