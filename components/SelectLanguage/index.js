import React from 'react';

import { Select } from '@duik/it';
import optionsCountries from './optionsCountries';

export const SelectLanguage = props => {
  const activeOption = optionsCountries.find(v => v.value == props.currentLanguage) || optionsCountries[0];
  return (
    <Select
      activeOption={activeOption}
      options={optionsCountries}
      placeholder="Action"
      position="bottomRight"
      {...props}
    />
  );
};
