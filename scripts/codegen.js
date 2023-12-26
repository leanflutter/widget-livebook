const fs = require(`fs`);

const cwd = `${process.cwd()}`;

function toCamelCase(inputString) {
  // 将字符串按照下划线分割成数组
  const words = inputString.split('_');

  // 将数组中的每个单词的首字母大写
  const capitalizedWords = words.map(
    (word) => word.charAt(0).toUpperCase() + word.slice(1)
  );

  // 将数组中的单词连接成一个字符串
  const camelCaseString = capitalizedWords.join('');

  return camelCaseString;
}

const demos = fs.readdirSync(`${cwd}/storybook/preview_app/lib/demos`);

for (const demo of demos) {
  fs.writeFileSync(
    `${cwd}/storybook/preview_app/lib/stories/${demo}_stories.dart`,
    `
import 'package:flutter/widgets.dart';
import 'package:preview_app/demos/${demo}/${demo}.dart';
import 'package:storybook_dart/storybook_dart.dart';
import 'package:storybook_dart_annotation/storybook_dart_annotation.dart'
    as storybook;

part '${demo}_stories.g.dart';

@storybook.Meta(
  title: '${demo.startsWith('cupertino') ? 'Cupertino' : 'Material'}/${toCamelCase(demo)}',
)
class ${toCamelCase(demo)}Meta extends Meta with _$${toCamelCase(demo)}Meta {
  @override
  Widget buildWidget(BuildContext context, List<Arg> args) {
    return const ${toCamelCase(demo)}Demo();
  }
}

@storybook.Story('Default')
class ${toCamelCase(demo)}DefaultStory extends StoryObj<${toCamelCase(
      demo
    )}Meta>
    with _$${toCamelCase(demo)}DefaultStory {}
`
  );
}
