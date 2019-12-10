export const camelToText = (string: string) => {
  const result = string
    .replace(/([A-Z]+)/g, " $1")
    .replace(/([A-Z][a-z])/g, " $1");
  const resultUpper = result.charAt(0).toUpperCase() + result.slice(1);
  return resultUpper;
};
