import * as React from 'react';
import { Code } from '../';

import './index.less';

export type CodeExampleProps = {
  fixed?: boolean;
  data?: {
    content: React.ReactElement;
    codeProps?: any;
  }[];
};

export const CodeExample = (props: CodeExampleProps) => {
  const { data, fixed } = props;

  return (
    <div className="code-example">
      {data &&
        data.map((item, index) => {
          return (
            <div
              key={index}
              style={{
                width: '100%',
                display: 'flex',
              }}
            >
              <div
                className="liveslice"
                style={{
                  backgroundColor: '#ffffff',
                  display: 'flex',
                }}
              >
                {item.content}
              </div>
              <div
                className="code"
                style={{
                  display: 'flex',
                  overflow: 'scroll',
                }}
              >
                <Code {...item.codeProps} />
              </div>
            </div>
          );
        })}
    </div>
  );
};
