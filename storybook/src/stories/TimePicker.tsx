import React from "react";
import FlutterRenderer from "../components/FlutterRenderer";

interface TimePickerProps {
}

export const TimePicker = (props: TimePickerProps) => {
  return (
    <FlutterRenderer {...props} />
  );
};
