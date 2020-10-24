// Next.js API route support: https://nextjs.org/docs/api-routes/introduction

import fs from 'fs';

const cwd = `${process.cwd()}`;

/**
 * 读取指定目录下全部片段并生成索引
 * @param {*} path
 */
const readDirToSnippets = (path) => {
  let paths = fs
    .readdirSync(`${path}`)
    .map((v) => `${path}/${v}`)
    .filter((v) => fs.lstatSync(v).isDirectory());

  let _snippets = [];

  for (let i = 0; i < paths.length; i++) {
    const path = paths[i];

    let subpaths = fs
      .readdirSync(path)
      .map((v) => `${path}/${v}`)
      .filter((v) => !fs.lstatSync(v).isDirectory());

    for (let j = 0; j < subpaths.length; j++) {
      const subpath = subpaths[j];
      if (!subpath.includes('.dart')) continue;

      let snippetName;
      let snippetCode = fs.readFileSync(subpath).toString();

      var regExp = /class Snippet([\s\S]*?) extends State/g;

      let results;
      while ((results = regExp.exec(snippetCode))) {
        snippetName = results[1];
      }

      _snippets.push({
        path: subpath,
        name: snippetName,
        code: snippetCode,
      });
    }
  }
  return _snippets;
};

export default (req, res) => {
  const { query } = req;

  let snippets = readDirToSnippets(`${cwd}/leanflutter_snippets/lib/snippets`);

  let items = snippets;
  if ((query.q || '').length > 0) {
    const q = query.q.toLowerCase();
    items = items.filter(({ name }) => name.toLowerCase().includes(q));
  }
  if ((query.name || '').length > 0) {
    items = items.filter(({ name }) => name === query.name);
  }

  res.statusCode = 200;
  res.json({ code: 0, items });
};
