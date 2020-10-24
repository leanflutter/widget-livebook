// Next.js API route support: https://nextjs.org/docs/api-routes/introduction

import fs from 'fs';
import YAML from 'yaml';

const cwd = `${process.cwd()}`;

export default (req, res) => {
  const { query } = req;
  let filePaths = fs
    .readdirSync(`${cwd}/leanflutter_3rd_snippets/db/providers`)
    .map((v) => `${cwd}/leanflutter_3rd_snippets/db/providers/${v}`)
    .filter((v) => !fs.lstatSync(v).isDirectory());

  const packages = [];

  for (let j = 0; j < filePaths.length; j++) {
    const filePath = filePaths[j];
    if (!filePath.includes('.yml')) continue;

    let text = fs.readFileSync(filePath).toString();
    let provider = YAML.parse(text);

    if (provider.packages) {
      packages.push(
        ...provider.packages.map((v) => {
          let repository = v.repository;
          if (!repository) {
            repository = {
              type: 'git',
              url: `https://github.com/${provider.name}/${v.name}`,
            };
          }

          return {
            ...v,
            url: `https://pub.dev/packages/${v.name}`,
            repository,
          };
        })
      );
    }
  }

  let data;
  if ((query.name || '').length > 0) {
    data = packages.filter(({ name }) => name === query.name)[0];
  }

  res.statusCode = 200;
  res.json({ code: 0, data });
};
