import links4basics from '../../pages/basics/_links.json';
import links4widgets from '../../pages/widgets/_links.json';
import links4faIRbasics from '../../pages/fa_IR/basics/_links.json';
import links4faIRwidgets from '../../pages/fa_IR/widgets/_links.json';
import links4zhCNbasics from '../../pages/zh_CN/basics/_links.json';
import links4zhCNwidgets from '../../pages/zh_CN/widgets/_links.json';

export default [
  {
    value: 'en',
    flag: '/images/flags/us.svg',
    name: 'English',
    links: {
      basics: links4basics,
      widgets: links4widgets,
    },
  },
  {
    value: 'fa_IR',
    flag: '/images/flags/ir.svg',
    name: 'Persian',
    dir: 'rtl',
    links: {
      basics: links4faIRbasics,
      widgets: links4faIRwidgets,
    },
  },
  {
    value: 'zh_CN',
    flag: '/images/flags/cn.svg',
    name: 'Chinese Simplified',
    links: {
      basics: links4zhCNbasics,
      widgets: links4zhCNwidgets,
    },
  },
];
