import * as React from "react";
import { Code } from "../";

import "./index.module.scss";

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
    <div className={"example-table-container"}>
      <table
        className={"example-table"}
        style={{ tableLayout: fixed ? "fixed" : "inherit" }}
      >
        <tbody>
          {data &&
            data.map((item, index) => {
              return (
                <tr
                  key={index}
                  style={{
                    display: 'flex',
                  }}
                >
                  <td
                    style={{
                      backgroundColor: '#ffffff',
                      display: 'flex',
                    }}
                  >
                    {item.content}
                  </td>
                  <td
                    style={{
                      display: 'flex',
                      overflow: 'scroll'
                    }}
                  >
                    <Code
                      {...item.codeProps}
                    />
                  </td>
                </tr>
              );
            })}
        </tbody>
      </table>
    </div>
  );
};
