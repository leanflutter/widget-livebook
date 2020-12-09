import React, { useEffect, useState } from 'react';
import { useRouter } from 'next/router';
import { Spin } from 'antd';

import { Result, Snippet } from '../../../../interfaces';
import { httpClient } from '../../../../networking';

import './index.less';

// interface EmbedSnippetDetailPageProps {}

const EmbedSnippetDetailPage = () => {
  const router = useRouter();
  const snippetName = router.query?.id;

  const [loading, setLoading] = useState(false);
  const [snippet, setSnippet] = useState<Snippet | undefined>();

  const loadData = async () => {
    setLoading(true);
    const resp = await httpClient.get(`/snippets/${snippetName}`);
    const r: Result<Snippet> = resp.data as Result<Snippet>;

    setSnippet(r.data);
    setLoading(false);
  };

  useEffect(() => {
    if (!snippetName) return;
    setTimeout(() => loadData(), 100);
  }, [snippetName]);

  return (
    <div
      id="embed_snippet_detail-page"
    >
      <Spin spinning={loading}>
        <div className="webdemo">
          {snippet && (
            <iframe
              src={`/snippets/index.html#/Snippet${snippetName}`}
              scrolling="no"
              onLoad={(_) => {
                setLoading(false);
              }}
            />
          )}
        </div>
      </Spin>
    </div>
  );
};

export default EmbedSnippetDetailPage;
