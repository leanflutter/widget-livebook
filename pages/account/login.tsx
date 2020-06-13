import React, { useState } from 'react';
import Head from 'next/head';
import Link from 'next/link';
import { useRouter } from 'next/router';
import { message, Button, Card, Checkbox, Form, Input, Typography } from 'antd';
import { Dispatch } from 'redux';
import { connect } from 'react-redux';
import * as appRedux from '../../redux';
import siteConfig from '../../utils/siteConfig';

const { Title } = Typography;

interface AccountLoginPageProps {
  dispatch: Dispatch;
  user: any;
}

const AccountLoginPage = (props: AccountLoginPageProps) => {
  const router = useRouter();

  const [processing, setProcessing] = useState(false);

  const handleOnFinish = async (values: any) => {
    try {
      const { dispatch } = props;
      setProcessing(true);
      await new Promise((r) => setTimeout(() => r(), 600));
      await dispatch(appRedux.actions.login(values));

      router.push('/');
    } catch (error) {
      message.error(error.message);
    } finally {
      setProcessing(false);
    }
  };

  return (
    <>
      <Head>
        <title>登录 - {siteConfig.title}</title>
      </Head>
      <div
        style={{
          width: '100vw',
          height: '100vh',
          display: 'flex',
          alignItems: 'center',
          justifyContent: 'center',
          flexDirection: 'column',
        }}
      >
        <Card
          style={{
            width: 400,
            boxShadow: '0 1px 3px 0 rgba(0,0,0,0.04)',
          }}
          bordered
        >
          <Form
            name="login_form"
            layout="vertical"
            initialValues={{ remember: true }}
            onFinish={handleOnFinish}
          >
            <Form.Item>
              <Title level={3} style={{ fontWeight: 400, marginBottom: 0 }}>
                登录到您的帐户
              </Title>
            </Form.Item>
            <Form.Item
              name="email"
              label="邮箱地址"
              rules={[{ required: true, message: '请输入您的邮箱地址！' }]}
            >
              <Input placeholder="your@example.com" />
            </Form.Item>
            <Form.Item
              name="password"
              label="密码"
              rules={[{ required: true, message: '请输入您的密码！' }]}
            >
              <Input.Password placeholder="·····" />
            </Form.Item>
            <Form.Item>
              <Form.Item
                name="remember"
                valuePropName="checked"
                style={{
                  display: 'inline-block',
                  width: '50%',
                  marginBottom: '0px',
                }}
              >
                <Checkbox>保持我的登录状态</Checkbox>
              </Form.Item>
              <Form.Item
                style={{
                  display: 'inline-block',
                  width: '50%',
                  marginBottom: '0px',
                }}
              >
                <Link href="/account/reset_password">
                  <a style={{ float: 'right' }}>找回密码</a>
                </Link>
              </Form.Item>
            </Form.Item>
            <Form.Item>
              <Button
                type="primary"
                htmlType="submit"
                block
                loading={processing}
              >
                登录
              </Button>
            </Form.Item>
          </Form>
        </Card>
        <p
          style={{
            marginTop: 16,
          }}
        >
          还没有帐号？
          <Link href="/account/register">
            <a>立即注册</a>
          </Link>
        </p>
      </div>
    </>
  );
};

const mapStateToProps = (state: any) => ({
  user: state.account.user,
});

export default connect(mapStateToProps)(AccountLoginPage);
