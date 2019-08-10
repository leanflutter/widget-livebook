import React from 'react'
import { render } from 'react-dom'
import Highlight, { defaultProps } from 'prism-react-renderer'
import { LiveProvider, LiveEditor, LiveError, LivePreview } from 'react-live'

export const Code = ({ codeString, language, ...props }) => {
  if (props['liveslice']) {
    const height = props['height'];
    const mockup = props['mockup'];
    return (
      <div>
        {
          !mockup ? <div /> : <div
            className="device-wrapper"
            style={{
              maxWidth: 400,
            }}
          >
            <div
              className="device"
              data-device="iPhone7"
              data-orientation="portrait"
              data-color="black"
              style={{
                pointerEvents: 'all'
              }}
            >
              <div
                className="screen"
                style={{
                  pointerEvents: 'all'
                }}
              >
                <iframe
                  style={{
                    width: '100%',
                    height: '100%',
                    margin: 0,
                    // ...(height ? { height } : {})
                  }}
                  src={`https://flutter-widget-livebook-uiexplorer.blankapp.org/#/Slice${props['liveslice']}`}
                  scrolling="no"
                />
              </div>
            </div>
          </div>
        }
        {
          mockup ? <div /> : <iframe
            style={{
              width: '100%',
              height: '100%',
              margin: 0,
              ...(height ? { height } : {})
            }}
            src={`https://flutter-widget-livebook-uiexplorer.blankapp.org/#/Slice${props['liveslice']}`}
            scrolling="no"
          />
        }
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
