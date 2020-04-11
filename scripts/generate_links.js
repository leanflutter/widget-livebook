const fs = require(`fs`)
const matter = require("gray-matter");
const cwd = `${process.cwd()}`;

const generateLinks = (path) => {
  let paths = fs.readdirSync(`${path}`)
    .map((v) => `${path}/${v}`)
    .filter((v) => fs.lstatSync(v).isDirectory())

  for (let i = 0; i < paths.length; i++) {
    const path = paths[i];

    let links = [];

    let subpaths = fs.readdirSync(path)
      .map((v) => `${path}/${v}`)
      .filter((v) => !fs.lstatSync(v).isDirectory())

    for (let j = 0; j < subpaths.length; j++) {
      const subpath = subpaths[j];
      if (subpath.includes('_links')) continue;
      if (!subpath.includes('.md')) continue;

      const mdData = fs.readFileSync(subpath).toString()
      const { data } = matter(mdData)

      links.push({
        id: data.id,
        title: data.title,
        description: data.description || '',
        path: subpath
          .replace(`${cwd}/pages`, '')
          .replace('.mdx', '')
          .replace('.md', ''),
      })
    }
    if (links.length > 0) {
      if (path.indexOf('basics') >= 0) {
        links = links.sort((a, b) => {
          return(a.id || '').localeCompare((b.id || ''))
        });
      }
      fs.writeFileSync(`${path}/_links.json`, JSON.stringify(links, null, 2))
    }
  }
}

generateLinks(`${cwd}/pages`);
generateLinks(`${cwd}/pages/fa_IR`);
generateLinks(`${cwd}/pages/zh_CN`);
generateLinks(`${cwd}/pages/zh_TW`);
