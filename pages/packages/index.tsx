import React from 'react';
import Link from 'next/link';
import { Card, List, Skeleton } from 'antd';

import { Container, Image, Layout, PagedListView } from '../../components';
import { Result, PagedList, Package } from '../../interfaces';
import { httpClient } from '../../networking';

import './index.less';

// interface PackageListPageProps {}

const PackageListPage = () => {
  return (
    <Layout title="Packages">
      <div id="package_list-page">
        <Container
          style={{
            flexDirection: 'column',
          }}
        >
          <PagedListView
            loadData={async (page: number, pageSize?: number) => {
              const resp = await httpClient.get('/packages', {
                params: { page, perPage: pageSize },
              });
              return resp.data as Result<PagedList<Package>>;
            }}
            itemLayout="horizontal"
            renderItem={(item) => (
              <List.Item>
                <Card>
                  <Skeleton avatar title={false} loading={item.loading} active>
                    <List.Item.Meta
                      title={
                        <Link
                          href="/packages/[id]"
                          as={`/packages/${item.name}`}
                        >
                          <a>{item.name}</a>
                        </Link>
                      }
                      description={
                        <>
                          <div>{item.url}</div>
                        </>
                      }
                    />
                  </Skeleton>
                  <div
                    style={{ position: 'absolute', right: '24px', top: '24px' }}
                  >
                    {item.difficultyLevel}
                  </div>
                </Card>
              </List.Item>
            )}
          />
        </Container>
      </div>
    </Layout>
  );
};

export default PackageListPage;
