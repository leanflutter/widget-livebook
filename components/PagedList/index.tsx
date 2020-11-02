import React, { useEffect, useState } from 'react';
import { useRouter } from 'next/router';
import { List, Pagination as PaginationComp } from 'antd';
import { ListProps } from 'antd/lib/list';
import { Pagination, Result } from '../../interfaces';

import './index.less';

interface PagedListProps extends ListProps<any> {
  loadData: (page: number, pageSize?: number) => Promise<Result<any>>;
}

const PagedList: React.FunctionComponent<PagedListProps> = (props) => {
  const router = useRouter();

  const { loadData, ...restProps } = props;
  const [loading, setLoading] = useState(true);
  const [pagination, setPagination] = useState<Pagination>();
  const [items, setItems] = useState<Array<any>>([]);

  const handleLoadData = async (page: number, pageSize?: number) => {
    setLoading(true);
    const r: Result<any> = await loadData(page, pageSize);

    setPagination(r.pagination);
    setItems(r.items || []);
    setLoading(false);
  };

  useEffect(() => {
    let searchParams: URLSearchParams = new URLSearchParams(
      router.asPath.split(/\?/)[1]
    );
    let currentPage: number = parseInt(`${searchParams.get('page')}`) || 1;

    setTimeout(() => handleLoadData(currentPage, 10), 100);
  }, []);

  return (
    <div className="paged-list-wrapper">
      <List
        className="paged-list"
        dataSource={items}
        loading={loading}
        rowKey="id"
        {...restProps}
      />
      {!loading && (
        <PaginationComp
          className="paged-list-pagination"
          current={pagination?.currentPage || 1}
          pageSize={pagination?.perPage || 10}
          total={pagination?.total || 0}
          size="small"
          showSizeChanger
          onChange={(page: number, pageSize?: number) => {
            if (loading) return;
            router.replace({
              pathname: router.pathname,
              query: { page },
            });

            handleLoadData(page, pageSize);
          }}
        />
      )}
    </div>
  );
};

export default PagedList;
