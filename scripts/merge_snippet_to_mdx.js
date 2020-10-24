const fs = require(`fs`);

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

      while ((results = regExp.exec(snippetCode))) {
        snippetName = results[1];
      }

      _snippets.push({
        name: snippetName,
        code: snippetCode,
      });
    }
  }
  return _snippets;
};

let snippets = [];
try {
  snippets = readDirToSnippets(`${cwd}/leanflutter_snippets/lib/snippets`);
} catch (error) {
  console.log(error);
}

const mergeSnippetToMdx = (path) => {
  let paths = fs
    .readdirSync(`${path}`)
    .map((v) => `${path}/${v}`)
    .filter((v) => fs.lstatSync(v).isDirectory());

  for (let i = 0; i < paths.length; i++) {
    const path = paths[i];

    let subpaths = fs
      .readdirSync(path)
      .map((v) => `${path}/${v}`)
      .filter((v) => !fs.lstatSync(v).isDirectory());

    for (let j = 0; j < subpaths.length; j++) {
      const subpath = subpaths[j];
      if (!subpath.includes('.md')) continue;

      const snippetTagStart = '<!-- START auto-generated CODE-SNIPPET -->';
      const snippetTagEnd = '<!-- END auto-generated CODE-SNIPPET -->';

      const findSnippetContent = (text) => {
        const regExp = new RegExp(
          `${snippetTagStart}([\\s\\S]*?)${snippetTagEnd}`,
          'g'
        );

        let snippetString = '';
        while ((results = regExp.exec(text))) {
          snippetString = results[0];
        }
        return snippetString;
      };

      const findSnippetName = (text) => {
        const regExp = new RegExp(`\`snippet: ([\\s\\S]*?)\``, 'g');

        let snippetName = '';
        while ((results = regExp.exec(text))) {
          snippetName = results[1];
        }
        return snippetName;
      };

      const findSnippetCode = (snippetName) => {
        let snippetCode = '';
        const snippet = snippets.find((v) => v.name === snippetName);
        if (snippet) {
          snippetCode = snippet.code;
        }
        return snippetCode;
      };

      let mdxString = fs.readFileSync(subpath).toString();

      let snippetContent = findSnippetContent(mdxString);
      let snippetName = findSnippetName(snippetContent);
      let snippetCode = findSnippetCode(snippetName);

      if (!snippetName) continue;

      const newSnippetContent = `${snippetTagStart}

\`snippet: ${snippetName}\`

\`\`\`dart liveslice=${snippetName}
${snippetCode}
\`\`\`

${snippetTagEnd}`;
      mdxString = mdxString.replace(snippetContent, newSnippetContent);
      fs.writeFileSync(subpath, mdxString);
    }
  }
};

mergeSnippetToMdx(`${cwd}/pages`);

fs.writeFileSync(`${cwd}/snippets.json`, JSON.stringify(snippets, null, 2));
