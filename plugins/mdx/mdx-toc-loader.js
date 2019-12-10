const stringifyObject = require("stringify-object");
const toc = require('markdown-toc');

module.exports = async function(src) {
  const callback = this.async()

  const code = `
export const tableOfContents = ${stringifyObject(toc(src).json)};
${src}
`
  return callback(null, code);
};
