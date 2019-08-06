import React from 'react'
import { render } from 'react-dom'
import Highlight, { defaultProps } from 'prism-react-renderer'
import { LiveProvider, LiveEditor, LiveError, LivePreview } from 'react-live'

export const Code = ({ codeString, language, ...props }) => {
  if (props['liveslice']) {
    const height = props['height'];
    return (
      <div>
        <iframe
          style={{
            width: '100%',
            margin: 0,
            ...(height ? { height } : {})
          }}
          src={`https://mockpad-uiexplorer.blankapp.org/#/Slice${props['liveslice']}`}
          scrolling="no"
        />
        <Highlight {...defaultProps} code={codeString} language={language} theme={undefined}>
          {({ className, style, tokens, getLineProps, getTokenProps }) => (
            <pre className={className} style={style}>
              {tokens.map((line, i) => (
                <div {...getLineProps({ line, key: i })}>
                  {line.map((token, key) => (
                    <span {...getTokenProps({ token, key })} />
                  ))}
                </div>
              ))}
            </pre>
          )}
        </Highlight>
      </div>
    );
  } else if (props['react-live']) {
    return (
      <LiveProvider code={codeString} noInline={true}>
        <LiveEditor />
        <LiveError />
        <LivePreview />
      </LiveProvider>
    )
  } else {
    return (
      <Highlight {...defaultProps} code={codeString} language={language} theme={undefined}>
        {({ className, style, tokens, getLineProps, getTokenProps }) => (
          <pre className={className} style={style}>
            {tokens.map((line, i) => (
              <div {...getLineProps({ line, key: i })}>
                {line.map((token, key) => (
                  <span {...getTokenProps({ token, key })} />
                ))}
              </div>
            ))}
          </pre>
        )}
      </Highlight>
    )
  }
}
