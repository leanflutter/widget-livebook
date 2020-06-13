import React from 'react';
import Link from 'next/link';
import { Ad } from '../';

import './TableOfContents.less';

const chromePluginUrl = 'https://bit.ly/3e0hCXc';

interface TableOfContentsProps {
  tocTree?: any;
}

const TableOfContents = ({ tocTree }: TableOfContentsProps) => {
  // const router = useRouter();

  return (
    <div className="article-toc">
      <a href={chromePluginUrl}>
        <img
          src="/images/ChromeWebStore_BadgeWBorder_v2_496x150.png"
          style={{
            width: '100%',
          }}
        />
      </a>
      {(tocTree || []).length === 0 ? null : <label>Table of contents</label>}
      <ol>
        {(tocTree || []).map((item: any) => (
          <li key={item.slug}>
            <Link href={`#${item.slug}`}>
              <a>{item.content}</a>
            </Link>
            {item.children.length === 0 ? null : (
              <ul>
                {(item.children || []).map((childItem: any) => (
                  <li key={childItem.slug}>
                    <Link href={`#${childItem.slug}`}>
                      <a>{childItem.content}</a>
                    </Link>
                  </li>
                ))}
              </ul>
            )}
          </li>
        ))}
      </ol>
      <Ad.CarbonAd />
    </div>
  );
};

export default TableOfContents;
