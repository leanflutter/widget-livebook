import React from "react";
import FlutterRenderer from "../components/FlutterRenderer";

interface BannerProps {
}

export const Banner = (props: BannerProps) => {
  return (
    <FlutterRenderer {...props} />
  );
};
