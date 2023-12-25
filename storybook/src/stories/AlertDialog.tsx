import React from "react";
import FlutterRenderer from "../components/FlutterRenderer";

interface AlertDialogProps {
}

export const AlertDialog = (props: AlertDialogProps) => {
  return (
    <FlutterRenderer {...props} />
  );
};
