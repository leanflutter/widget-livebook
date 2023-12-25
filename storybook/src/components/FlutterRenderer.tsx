import React from "react";

export interface FlutterRendererProps {
  storyArgs?: Record<string, unknown>;
}

const FlutterRenderer = (_props: FlutterRendererProps): React.ReactElement => {
  const searchParams = new URLSearchParams(window.location.search);
  const storyId = searchParams.get("id");
  const iframeRef = React.useRef<HTMLIFrameElement>(null);
  const url = `/preview_app/index.html?id=${storyId}`;
  return (
    <iframe
      title="flutter-app-embed"
      src={url}
      ref={iframeRef}
      style={{ border: "0", width: "320px", height: "240px" }}
      id="flutter-renderer-iframe"
    />
  );
};

FlutterRenderer.displayName = "FlutterRenderer";
export default FlutterRenderer;
