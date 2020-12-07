import React, { useEffect, useState } from 'react';
import { useRouter } from 'next/router';
import { List, Pagination as PaginationComp } from 'antd';
import { ListProps } from 'antd/lib/list';
import { PagedList, Result } from '../../interfaces';

import './index.less';

interface PagedListViewProps<T> extends ListProps<T> {
  loadData: (page: number, pageSize?: number) => Promise<Result<PagedList<T>>>;
}

const PagedListView: React.FunctionComponent<PagedListViewProps<any>> = (
  props
) => {
  const router = useRouter();

  const { loadData, ...restProps } = props;
  const [loading, setLoading] = useState(true);

  const [items, setItems] = useState<Array<any>>([]);
  const [currentPage, setCurrentPage] = useState<number>(1);
  const [perPage, setPerPage] = useState<number>(10);
  const [total, setTotal] = useState<number>(0);

  const handleLoadData = async (page: number, pageSize?: number) => {
    setLoading(true);
    const r: Result<PagedList<any>> = await loadData(page, pageSize);
    const list: PagedList<any> | null = r.data ?? null;

    setItems(list?.items || []);
    setCurrentPage(list?.currentPage || 1);
    setPerPage(list?.perPage || 10);
    setTotal(list?.total || 0);
    setLoading(false);
  };

  useEffect(() => {
    let searchParams: URLSearchParams = new URLSearchParams(
      router.asPath.split(/\?/)[1]
    );
    let currentPage: number = parseInt(`${searchParams.get('page')}`) || 1;
    let pageSize: number = parseInt(`${searchParams.get('pageSize')}`) || 10;

    setTimeout(() => handleLoadData(currentPage, pageSize), 100);
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
      <PaginationComp
        className="paged-list-pagination"
        current={currentPage || 1}
        pageSize={perPage || 10}
        total={total || 0}
        size="small"
        showSizeChanger
        onChange={(page: number, pageSize?: number) => {
          if (loading) return;
          router.replace({
            pathname: router.pathname,
            query: { page, pageSize },
          });

          handleLoadData(page, pageSize);
        }}
      />
    </div>
  );
};

export default PagedListView;
