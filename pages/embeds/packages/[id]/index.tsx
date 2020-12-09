import React, { useEffect, useState } from 'react';
import { useRouter } from 'next/router';
import { Spin } from 'antd';

import { Package, Result } from '../../../../interfaces';
import { httpClient } from '../../../../networking';

import './index.less';

// interface EmbedPackageDetailPageProps {}

const EmbedPackageDetailPage = () => {
  const router = useRouter();
  const packageName = router.query?.id;

  const [loading, setLoading] = useState(true);
  const [pkg, setPackage] = useState<Package | undefined>();

  const loadData = async () => {
    const resp = await httpClient.get(`/packages/${packageName}`);
    const r: Result<Package> = resp.data as Result<Package>;

    setPackage(r.data);
  };

  useEffect(() => {
    if (!packageName) return;
    setTimeout(() => loadData(), 100);
  }, [packageName]);

  return (
    <div
      id="embed_package_detail-page"
    >
      <div className="device device-google-pixel device-black">
        <div className="device-frame">
          <Spin spinning={loading}>
            <div className="webdemo">
              {pkg && (
                <iframe
                  src={`/3rd_package_examples/${pkg?.name}/index.html`}
                  scrolling="no"
                  onLoad={(_) => {
                    setLoading(false);
                  }}
                />
              )}
            </div>
          </Spin>
        </div>
        <div className="device-stripe"></div>
        <div className="device-header"></div>
        <div className="device-sensors"></div>
        <div className="device-btns"></div>
        <div className="device-power"></div>
      </div>
    </div>
  );
};

export default EmbedPackageDetailPage;
