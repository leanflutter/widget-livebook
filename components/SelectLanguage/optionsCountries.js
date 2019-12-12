import React from 'react';

import './selectcountry.module.scss';

export default [
  {
    value: 'en',
    label: (
      <span className={'select-option-country-content'}>
        <img
          alt="English"
          className={'select-option-flag'}
          src={'/images/flags/en.png'}
        />
        English
      </span>
    )
  },
  {
    value: 'zh_CN',
    label: (
      <span className={'select-option-country-content'}>
        <img
          alt="Chinese Simplified"
          className={'select-option-flag'}
          src={'/images/flags/zh-CN.png'}
        />
        Chinese Simplified
      </span>
    )
  }
];
