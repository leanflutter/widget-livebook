import React from "react";
import FlutterRenderer from "../components/FlutterRenderer";

interface GridTileProps {
}

export const GridTile = (props: GridTileProps) => {
  return (
    <FlutterRenderer {...props} />
  );
};
