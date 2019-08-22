import React from 'react'
import { Light as SyntaxHighlighter } from 'react-syntax-highlighter';
// import { docco } from 'react-syntax-highlighter/dist/esm/styles/hljs';
import dart from 'react-syntax-highlighter/dist/esm/languages/hljs/dart';
import json from 'react-syntax-highlighter/dist/esm/languages/hljs/json';

SyntaxHighlighter.registerLanguage('dart', dart);
SyntaxHighlighter.registerLanguage('json', json);

const Code = ({ codeString, language, ...props }) => {
  if (props['liveslice']) {
    const height = props['height'];
    const mockup = props['mockup'];
    return (
      <div>
        {
          !mockup ? <div /> : <div
            className="device-wrapper"
            style={{
              marginTop: '10px',
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
              marginTop: '10px',
              ...(height ? { height } : {})
            }}
            src={`https://flutter-widget-livebook-uiexplorer.blankapp.org/#/Slice${props['liveslice']}`}
            scrolling="no"
          />
        }
        <SyntaxHighlighter language={`${language}`}>
          {codeString}
        </SyntaxHighlighter>
      </div>
    );
  } else {
    return (
      <SyntaxHighlighter language={`${language}`}>
        {codeString}
      </SyntaxHighlighter>
    )
  }
}

export default Code;
