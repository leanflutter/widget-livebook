const fs = require(`fs`);
const YAML = require('yaml');
const matter = require('gray-matter');

const cwd = `${process.cwd()}`;

/**
 * 读取根目录下 _config.yml 配置文件。
 */
const readConfigFile = () => {
  const siteConfigYml = fs.readFileSync(`${cwd}/_config.yml`, 'utf8');
  const siteConfigJson = YAML.parse(siteConfigYml);

  return siteConfigJson;
};

/**
 * 读取指定目录下全部页面并生成索引
 * @param {*} path
 */
const readDirToLinks = (path) => {
  let paths = fs
    .readdirSync(`${path}`)
    .map((v) => `${path}/${v}`)
    .filter((v) => fs.lstatSync(v).isDirectory());

  let links = [];

  for (let i = 0; i < paths.length; i++) {
    const path = paths[i];

    let subpaths = fs
      .readdirSync(path)
      .map((v) => `${path}/${v}`)
      .filter((v) => !fs.lstatSync(v).isDirectory());

    for (let j = 0; j < subpaths.length; j++) {
      const subpath = subpaths[j];
      if (subpath.includes('links')) continue;
      if (!subpath.includes('.md')) continue;

      const mdData = fs.readFileSync(subpath).toString();
      const { data } = matter(mdData);

      links.push({
        id: data.id,
        title: data.title,
        summary: data.summary,
        description: data.description,
        path: subpath
          .replace(`${cwd}/pages`, '')
          .replace('/index.mdx', '')
          .replace('/index.md', '')
          .replace('.mdx', '')
          .replace('.md', ''),
      });
    }
  }
  return links;
};

const siteConfig = readConfigFile();

const { supportedLanguages, sidebar } = siteConfig;

let newSiteConfig = Object.assign({}, siteConfig);
let newSiteConfigSidebar = {};

Object.keys(supportedLanguages).forEach((languageKey) => {
  // 连接路径，处理当连接路径为 / 时的各种情况
  const pathConcat = (langPath = '', rootPath = '', subPath = '') => {
    if (langPath === '/' && !rootPath && !subPath) return '';
    if (langPath === '/' && rootPath === '/' && !subPath) return '/';

    let newLangPath = langPath === '/' ? '' : langPath;
    let newRootPath = rootPath === '/' ? '' : rootPath;
    let newSubPath = subPath;

    let prefixPath = `${newLangPath}${newRootPath}`;
    if (prefixPath && newSubPath == '/') newSubPath = '';
    return `${prefixPath}${newSubPath}`;
  };

  const { pathname: langPath } = supportedLanguages[languageKey];
  const dir = `${cwd}/pages${pathConcat(langPath)}`;

  try {
    const pageLinks = readDirToLinks(dir);

    Object.keys(sidebar).forEach((rootPath) => {
      const sections = sidebar[rootPath];

      let newRootPath = pathConcat(langPath, rootPath);
      let newSections = [];

      for (let i = 0; i < sections.length; i++) {
        const { key, children: subpaths } = sections[i];
        for (let j = 0; j < subpaths.length; j++) {
          const subpath = subpaths[j];

          // 语言路径 + 根路径 + 子路径
          const fullPath = pathConcat(langPath, rootPath, subpath);

          // 通过查找链接（通过 id 或者 path）
          const pageLink = pageLinks.find((v) => v.path === fullPath);
          if (pageLink) {
            if (!newSections[i]) newSections[i] = { key, children: [] };
            newSections[i].children[j] = Object.assign({}, pageLink);
          }
        }
      }

      newSiteConfigSidebar[newRootPath] = newSections;
    });
    newSiteConfig.sidebar = newSiteConfigSidebar;
  } catch (error) {
    console.warn(error.message);
  }
});

fs.writeFileSync(
  `${cwd}/utils/siteConfig/siteConfig.json`,
  JSON.stringify(newSiteConfig, null, 2)
);
