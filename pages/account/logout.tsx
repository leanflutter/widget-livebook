import React, { useEffect } from 'react';
import Head from 'next/head';
import { useRouter } from 'next/router';
import { Spin } from 'antd';
import { Dispatch } from 'redux';
import { connect } from 'react-redux';
import * as appRedux from '../../redux';

interface AccountLogoutPageProps {
  user: any;
  dispatch: Dispatch<any>;
}
const AccountLogoutPage = (props: AccountLogoutPageProps) => {
  const router = useRouter();

  useEffect(() => {
    setTimeout(async () => {
      const { dispatch } = props;
      try {
        await dispatch(appRedux.actions.logout());

        window.localStorage.removeItem('accessToken');
        window.localStorage.removeItem('currentUser');
      } catch (error) {
        // skip error
      } finally {
        router.push('/');
      }
    }, 600);
  });

  return (
    <>
      <Head>
        <title>退出登录中...</title>
      </Head>
      <div
        style={{
          height: '100vh',
          display: 'flex',
          flexDirection: 'column',
          alignItems: 'center',
          justifyContent: 'center',
        }}
      >
        <Spin size="large" />
      </div>
    </>
  );
};

const mapStateToProps = (state: any) => ({
  user: state.account.user,
});

export default connect(mapStateToProps)(AccountLogoutPage);
