import * as React from 'react'
import prism from 'prismjs'
import classnames from 'classnames'

import { Button } from '@duik/it'
import { Icon } from '@duik/icon'

import { copyToClipboard } from '../../utils'
import './code.module.scss';

import 'prismjs/components/prism-javascript'
import 'prismjs/components/prism-jsx'
import 'prismjs/components/prism-markup'
import 'prismjs/components/prism-css'
import 'prismjs/components/prism-json'
import 'prismjs/components/prism-dart'

export type CodeProps = JSX.IntrinsicElements['div'] & {
  codeString?: string;
  language?: string;
  className?: String;
};

export class Code extends React.Component<CodeProps> {
  codeRef = React.createRef<HTMLPreElement>();

  componentDidMount() {
    this.highlightCode();
  }

  componentDidUpdate() {
    this.highlightCode();
  }

  highlightCode() {
    if (this.codeRef && this.codeRef.current) {
      prism.highlightElement(this.codeRef.current);
    }
  }

  render() {
    const { language, codeString, className, ...rest } = this.props;

    const handleCopy = () => copyToClipboard(codeString as string);

    return (
      <div className={'code-wrapper'} {...rest}>
        <Button
          onClick={handleCopy}
          clear
          className={'button-copy'}
          square
        >
          <Icon>multitasking</Icon>
        </Button>
        <pre
          ref={this.codeRef}
          className={classnames(
            'react-prism',
            `language-${language}`,
            className
          )}
        >
          <code>{codeString}</code>
        </pre>
      </div>
    );
  }
}

export default Code;
