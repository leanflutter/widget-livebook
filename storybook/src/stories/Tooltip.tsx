import React from "react";
import FlutterRenderer from "../components/FlutterRenderer";

interface TooltipProps {
}

export const Tooltip = (props: TooltipProps) => {
  return (
    <FlutterRenderer {...props} />
  );
};
