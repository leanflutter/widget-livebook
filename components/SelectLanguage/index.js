import React from 'react';
import { Select } from '@duik/it';

import languages from './languages';

import './SelectLanguage.module.scss';

export const SelectLanguage = (props) => {
  const { currentLanguage, ...restProps } = props;
  const options = languages.map((v) => {
    return Object.assign({}, v, {
      label: (
        <span className={'select-option-country-content'}>
          <img alt={v.name} className={'select-option-flag'} src={v.flag} />
          {v.name}
        </span>
      ),
    });
  });

  const activeOption =
    options.find(({ value }) => {
      return value === currentLanguage.value;
    }) || options[0];

  return (
    <Select
      activeOption={activeOption}
      options={options}
      placeholder="Action"
      position="bottomRight"
      {...restProps}
    />
  );
};

SelectLanguage.supportedLanguages = languages;
