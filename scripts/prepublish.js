const fs = require(`fs`)
const matter = require("gray-matter");
const cwd = `${process.cwd()}`;

let paths = fs.readdirSync(`${cwd}/pages`)
  .map((v) => `${cwd}/pages/${v}`)
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
      title: data.title,
      description: data.description || '',
      path: subpath
        .replace(`${cwd}/pages`, '')
        .replace('.mdx', '')
        .replace('.md', ''),
    })
  }

  fs.writeFileSync(`${path}/_links.json`, JSON.stringify(links, null, 2))
}
