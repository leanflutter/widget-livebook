import { addons } from '@storybook/manager-api';
import { create } from '@storybook/theming/create';

addons.setConfig({
  theme: create({
    base: 'light',
    brandTitle: 'Flutter Widget Livebook',
    brandUrl: 'https://widget-livebook.leanflutter.dev',
    brandImage: '/images/brand.png',
    brandTarget: '_self',
  }),
  panelPosition: 'right',
});
