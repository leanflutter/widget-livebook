import React, { useEffect, useState } from 'react';
import { sharedHttpClient } from '../../networking';
import env from '../../utils/env';

import './InjectWebDemo4Package.less';

declare var location: any;

interface InjectWebDemo4PackageProps {}

const InjectWebDemo4Package = (props: InjectWebDemo4PackageProps) => {
  const { pathname } = location;

  const [loading, setLoading] = useState(true);
  const [pkg, setPackage] = useState<any>();

  let pkgName = pathname.split('/')[2];
  if (!pkgName || !pathname.endsWith(pkgName)) pkgName = undefined;

  const loadData = async () => {
    try {
      const resp = await sharedHttpClient.get(`/packages/${pkgName}`);
      setPackage(resp.data.data);
    } catch (error) {
    } finally {
      setLoading(false);
    }
  };

  useEffect(() => {
    if (!pkgName) return;
    setTimeout(() => loadData(), 100);
  }, [pkgName]);

  if (!pkgName) return null;

  return (
    <div className="inject-webdemo-4-package">
      {!loading && (
        <>
          {pkg && (
            <iframe
              title={`${env.webURL}/embeds/packages/${pkgName}`}
              src={`${env.webURL}/embeds/packages/${pkgName}`}
              scrolling="no"
            ></iframe>
          )}
        </>
      )}
    </div>
  );
};

export default InjectWebDemo4Package;
