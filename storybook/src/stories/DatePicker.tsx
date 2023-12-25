import React from "react";
import FlutterRenderer from "../components/FlutterRenderer";

interface DatePickerProps {
}

export const DatePicker = (props: DatePickerProps) => {
  return (
    <FlutterRenderer {...props} />
  );
};
