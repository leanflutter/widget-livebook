import React from 'react'
import { PrismLight as SyntaxHighlighter } from 'react-syntax-highlighter';
import { tomorrow } from 'react-syntax-highlighter/dist/esm/styles/prism';
import dart from 'react-syntax-highlighter/dist/esm/languages/prism/dart';
import json from 'react-syntax-highlighter/dist/esm/languages/prism/json';
import jsx from 'react-syntax-highlighter/dist/esm/languages/prism/jsx';

SyntaxHighlighter.registerLanguage('dart', dart);
SyntaxHighlighter.registerLanguage('json', json);
SyntaxHighlighter.registerLanguage('jsx', jsx);

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
          mockup ? <div /> : <div className="livesample-container">
            <iframe
              id="livesample"
              style={{
                width: '100%',
                height: '100%',
                ...(height ? { height } : {})
              }}
              src={`https://flutter-widget-livebook-uiexplorer.blankapp.org/#/Slice${props['liveslice']}`}
              scrolling="no"
            />
          </div>
        }
        <SyntaxHighlighter
          language={`${language}`}
          // showLineNumbers
          style={tomorrow}
        >
          {codeString}
        </SyntaxHighlighter>
      </div>
    );
  } else {
    return (
        <SyntaxHighlighter
          language={`${language}`}
          // showLineNumbers
          style={tomorrow}
        >
        {codeString}
      </SyntaxHighlighter>
    )
  }
}

export default Code;
