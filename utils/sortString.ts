export const sortString = (a: string, b: string) =>
  `${a}`
    .trim()
    .replace(/[^a-zA-Z ]/g, '')
    .localeCompare(`${b}`.trim().replace(/[^a-zA-Z ]/g, ''));

export const createSortString = <O>(objectKey: keyof O) => (a: O, b: O) =>
  sortString(`${a[objectKey]}`, `${b[objectKey]}`);
