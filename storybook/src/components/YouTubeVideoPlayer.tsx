import React from 'react';

export interface YouTubeVideoPlayerProps {
  videoId: string;
}

const YouTubeVideoPlayer = (
  props: YouTubeVideoPlayerProps
): React.ReactElement => {
  const { videoId } = props;
  return (
    <iframe
      style={{
        maxWidth: '768px',
        width: '100%',
        height: '432px',
        border: 'none',
      }}
      src={`https://www.youtube.com/embed/${videoId}`}
      title="YouTube video player"
      allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
      allowFullScreen
    />
  );
};

YouTubeVideoPlayer.displayName = 'YouTubeVideoPlayer';
export default YouTubeVideoPlayer;
