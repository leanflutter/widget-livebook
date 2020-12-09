import React, { useEffect, useState } from 'react';
import { sharedHttpClient } from '../../networking';
import env from '../../utils/env';

import './InjectWebDemo4Snippet.less';

declare var location: any;

interface InjectWebDemo4SnippetProps {}

const InjectWebDemo4Snippet = (props: InjectWebDemo4SnippetProps) => {
  const { pathname } = location;

  const [loading, setLoading] = useState(true);
  const [snippet, setSnippet] = useState<any>();

  const snippetName = pathname
    .substr(pathname.lastIndexOf('/') + 1)
    .replace('-class.html', '');

  const loadData = async () => {
    try {
      const resp = await sharedHttpClient.get(`/snippets/${snippetName}`);
      setSnippet(resp.data.data);
    } catch (error) {
    } finally {
      setLoading(false);
    }
  };

  useEffect(() => {
    if (!snippetName) return;
    setTimeout(() => loadData(), 100);
  }, [snippetName]);

  if (!snippetName) return null;

  return (
    <div className="inject-webdemo-4-snippet">
      {!loading && (
        <>
          {snippet && (
            <>
              <h2>Live samples</h2>
              <div className="livesample-container">
                <p>This sample shows a basic {snippetName}.</p>
                <iframe
                  src={`${env.webURL}/embeds/snippets/${snippetName}`}
                  scrolling="no"
                ></iframe>
                <footer>
                  <a target="_blank" href="#">
                    Source
                  </a>
                  <span style={{ flex: 1 }}></span>
                  <a
                    target="_blank"
                    href={`${env.webURL}/widgets/${snippetName}`}
                  >
                    See more samples on Flutter Widget Livebook
                  </a>
                </footer>
              </div>
            </>
          )}
        </>
      )}
    </div>
  );
};

export default InjectWebDemo4Snippet;
