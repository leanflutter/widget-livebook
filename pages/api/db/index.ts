// Next.js API route support: https://nextjs.org/docs/api-routes/introduction

import fs from 'fs';
import YAML from 'yaml';

import { PagedList } from '../../../interfaces';
import { normalize } from '../../../utils/normalize';

const cwd = `${process.cwd()}`;

export const paginate = (items: Array<any>, page: number, perPage: number) => {
  const total = items.length;
  const lastPage = Math.ceil(total / perPage);

  const from = (page - 1) * perPage;
  const to = from + (perPage - 1);

  const pagedList: PagedList<any> = {
    total,
    currentPage: page,
    lastPage,
    perPage: perPage,
    items: items.slice(from, to + 1),
  };
  return pagedList;
};

export const getPackages = () => {
  const path = `${cwd}/leanflutter_3rd_snippets/db/providers`;
  let filePaths = fs
    .readdirSync(`${path}`)
    .map((v) => `${path}/${v}`)
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
  return packages;
};

export const getSnippets = () => {
  const path = `${cwd}/leanflutter_snippets/lib/snippets`;
  let paths = fs
    .readdirSync(`${path}`)
    .map((v) => `${path}/${v}`)
    .filter((v) => fs.lstatSync(v).isDirectory());

  let snippets = [];

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

      snippets.push({
        path: subpath,
        name: snippetName,
        code: snippetCode,
      });
    }
  }
  return snippets;
};

export const getWidgets = () => {
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
    let contents = fs.readFileSync(filePath).toString();

    widgets.push({ name, path, description, contents });
  }

  return widgets;
};

export const getDb = () => {
  const packages = getPackages();
  const snippets = getSnippets();
  const widgets = getWidgets();
  return { packages, snippets, widgets };
};

export default (_: any, res: any) => {
  const db = getDb();

  res.statusCode = 200;
  res.json(db);
};
