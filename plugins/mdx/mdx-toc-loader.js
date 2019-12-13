const stringifyObject = require("stringify-object");
const toc = require('markdown-toc');

module.exports = async function(src) {
  const callback = this.async()

  const tableOfContents = toc(src).json;
  const tocTree = [];
  for (let i = 0; i < tableOfContents.length; i++) {
    const element = tableOfContents[i];
    if (element.lvl == 2) {
      tocTree.push(Object.assign(
        element, {
          children: [],
        }
      ));
    } else if (element.lvl == 3) {
      if (tocTree[tocTree.length - 1]) {
        tocTree[tocTree.length - 1].children.push(element);
      }
    }
  }

  const code = `
export const tocTree = ${stringifyObject(tocTree)};
${src}
`
  return callback(null, code);
};
