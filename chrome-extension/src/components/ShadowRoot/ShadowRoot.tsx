import * as React from 'react';
import root from 'react-shadow';

// eslint-disable-next-line
import cssTextAntd from '!!raw-loader!./css_antd.txt';
// eslint-disable-next-line
import cssTextStyles from '!!raw-loader!./css_styles.txt';

interface ShadowRootProps {
  children: any;
  debug?: boolean;
}

interface ShadowRootState {}

class ShadowRoot extends React.Component<ShadowRootProps, ShadowRootState> {
  render() {
    const { children, debug } = this.props;
    if (debug === true) {
      return <div>{children}</div>;
    }
    return (
      <>
        <root.div>
          <>
            <html
              style={{
                borderRadius: '4px',
                overflow: 'hidden',
              }}
            >
              <head>
                <style>{cssTextAntd}</style>
                <style>{cssTextStyles}</style>
              </head>
              <body>{children}</body>
            </html>
          </>
        </root.div>
      </>
    );
  }
}

export default ShadowRoot;
