import React from "react";
import FlutterRenderer from "../components/FlutterRenderer";

interface CardProps {
}

export const Card = (props: CardProps) => {
  return (
    <FlutterRenderer {...props} />
  );
};
