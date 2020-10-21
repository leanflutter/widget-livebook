// Next.js API route support: https://nextjs.org/docs/api-routes/introduction

import fs from 'fs';

const cwd = `${process.cwd()}`;

export default (req, res) => {
  const { query } = req;

  let filePaths = fs
    .readdirSync(`${cwd}/pages/widgets`)
    .map((v) => `${cwd}/pages/widgets/${v}`)
    .filter((v) => !fs.lstatSync(v).isDirectory());

  const widgets = [];

  for (let j = 0; j < filePaths.length; j++) {
    const filePath = filePaths[j];
    if (!filePath.includes('.mdx')) continue;

    let name = filePath.replace(/^.*[\\\/]/, '').replace('.mdx', '');
    let path = filePath.replace(cwd, '').replace('/pages', '');
    let description;
    let contents;
    if (
      query.include &&
      (query.include === 'contents' || query.include.includes('contents'))
    ) {
      contents = fs.readFileSync(filePath).toString();
    }

    widgets.push({ name, path, description, contents });
  }

  let items = widgets;
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
