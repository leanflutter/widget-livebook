import React from 'react';
import { Button, Dropdown, Menu } from 'antd';
import { DownOutlined } from '@ant-design/icons';

import { useCurrentLanguage } from '../../utils/useCurrentLanguage';
import siteConfig from '../../utils/siteConfig';

import './index.less';

const SelectLanguageItemFlag = ({ name, flag }: any) => {
  return <img alt={name} className={'select-language-item-flag'} src={flag} />;
};

const SelectLanguage = () => {
  const { currentLanguage, setCurrentLanguage } = useCurrentLanguage();

  const handleMenuClick = ({ key }) => {
    console.log('click', key);
    setCurrentLanguage(key);
  };

  return (
    <Dropdown
      overlay={
        <Menu onClick={handleMenuClick}>
          {Object.keys(siteConfig.supportedLanguages).map((code) => {
            const supportedLanguage = siteConfig.supportedLanguages[code];
            return (
              <Menu.Item
                key={code}
                icon={<SelectLanguageItemFlag {...supportedLanguage} />}
              >
                {supportedLanguage.name}
              </Menu.Item>
            );
          })}
        </Menu>
      }
    >
      <Button icon={<SelectLanguageItemFlag {...currentLanguage} />}>
        {currentLanguage.name}
        <DownOutlined />
      </Button>
    </Dropdown>
  );
};

export default SelectLanguage;
