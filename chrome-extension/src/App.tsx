import React from 'react';
import { ConfigProvider } from 'antd';

import './content_script';

const App: React.FC = () => {
  return (
    <ConfigProvider autoInsertSpaceInButton={false}>
      <div></div>
    </ConfigProvider>
  );
};

export default App;
