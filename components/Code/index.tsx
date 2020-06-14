import * as React from 'react';
import prism from 'prismjs';
import classnames from 'classnames';

import { Button } from 'antd';
import { CopyOutlined } from '@ant-design/icons';

import { copyToClipboard } from '../../utils';

import './index.less';

import 'prismjs/components/prism-javascript';
import 'prismjs/components/prism-jsx';
import 'prismjs/components/prism-markup';
import 'prismjs/components/prism-css';
import 'prismjs/components/prism-json';
import 'prismjs/components/prism-dart';
import 'prismjs/components/prism-yaml';
import 'prismjs/components/prism-diff';
import 'prismjs/components/prism-bash';

export type CodeProps = JSX.IntrinsicElements['div'] & {
  codeString?: string;
  language?: string;
  className?: String;
};

export class Code extends React.Component<CodeProps> {
  render() {
    const { language, codeString, className, ...rest } = this.props;

    const handleCopy = () => copyToClipboard(codeString as string);

    let html = prism.highlight(codeString, prism.languages[language], language);

    return (
      <div className={'code-wrapper'} {...rest}>
        <Button
          onClick={handleCopy}
          type="text"
          className={'button-copy'}
          icon={<CopyOutlined />}
        />
        <pre
          className={classnames(
            'react-prism',
            `language-${language}`,
            className
          )}
          dangerouslySetInnerHTML={{ __html: html }}
        />
      </div>
    );
  }
}

export default Code;
