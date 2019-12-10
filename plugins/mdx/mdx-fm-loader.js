const stringifyObject = require("stringify-object");
const matter = require("gray-matter");

module.exports = async function(src) {
  const callback = this.async()
  const { content, data } = matter(src)

  const code = `
export const frontMatter = ${stringifyObject(data)}
${content}
`

  return callback(null, code);
};
