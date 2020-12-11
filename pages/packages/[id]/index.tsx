import React, { useEffect, useState } from 'react';
import Link from 'next/link';
import { useRouter } from 'next/router';
import { List, Menu, Divider, Spin } from 'antd';
import { AppstoreOutlined, BarsOutlined } from '@ant-design/icons';

import { Container, Layout, Ads } from '../../../components';
import { Package, Result } from '../../../interfaces';
import { httpClient } from '../../../networking';

import './index.less';

// interface PackageDetailPageProps {}

const PackageDetailPage = () => {
  const router = useRouter();
  const packageName = router.query?.id;

  const [loading, setLoading] = useState(false);
  const [pkg, setPackage] = useState<Package | undefined>();

  const loadData = async () => {
    setLoading(true);
    const resp = await httpClient.get(`/packages/${packageName}`);
    const r: Result<Package> = resp.data as Result<Package>;

    setPackage(r.data);
    setLoading(false);
  };

  useEffect(() => {
    if (!packageName) return;
    setTimeout(() => loadData(), 100);
  }, [packageName]);

  return (
    <Layout title={pkg?.name}>
      <div id="package_detail-page">
        <Spin spinning={loading}>
          <div
            style={{
              backgroundColor: '#ffffff',
              width: '100vw',
              minHeight: '100px',
              display: 'flex',
              flexDirection: 'column',
              alignItems: 'center',
            }}
          >
            <Container
              style={{
                paddingTop: '32px',
                paddingBottom: '32px',
                position: 'relative',
              }}
            >
              <List.Item.Meta
                title={
                  <a href={pkg?.url} target="_blank">
                    {pkg?.name}
                  </a>
                }
                description={
                  <>
                    <div>{pkg?.url}</div>
                  </>
                }
              />
              <Ads.CarbonAd style={{}} />
            </Container>
            <Divider style={{ margin: 0 }} />
          </div>
          <div
            style={{
              paddingTop: '30px',
              paddingBottom: '30px',
              display: 'flex',
              flexDirection: 'row',
              alignItems: 'center',
              justifyContent: 'center',
            }}
          >
            <div className="device device-google-pixel device-black">
              <div className="device-frame">
                {pkg && (
                  <iframe
                    style={{
                      width: '100%',
                      height: '100%',
                    }}
                    src={
                      pkg?.demoUrl ||
                      `/3rd_package_examples/${pkg?.name}/index.html`
                    }
                    scrolling="no"
                  />
                )}
              </div>
              <div className="device-stripe"></div>
              <div className="device-header"></div>
              <div className="device-sensors"></div>
              <div className="device-btns"></div>
              <div className="device-power"></div>
            </div>
          </div>
        </Spin>
      </div>
    </Layout>
  );
};

export default PackageDetailPage;
