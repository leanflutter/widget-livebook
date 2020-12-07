import _ from 'lodash';

export const normalize = (caseType: string, object: any): any => {
  if (!object) {
    return object;
  }
  if (typeof object === 'object') {
    Object.keys(object).forEach((key): any => {
      const convertedKey =
        caseType === 'camelcase' ? _.camelCase(key) : _.snakeCase(key);
      if (convertedKey !== key) {
        object[convertedKey] = object[key];
        delete object[key];
      }

      object[convertedKey] = normalize(caseType, object[convertedKey]);
    });
  } else if (Array.isArray(object)) {
    object = object.map((v): any => normalize(caseType, v));
  }
  return object;
};
