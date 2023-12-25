import { Meta, StoryObj } from "@storybook/react";
import { CupertinoTabBar } from "./CupertinoTabBar";

const meta = {
  title: "Cupertino/CupertinoTabBar",
  component: CupertinoTabBar,
  parameters: {
    layout: "centered",
  },
  argTypes: {
    
  },
} satisfies Meta<typeof CupertinoTabBar>;

export default meta
type Story = StoryObj<typeof meta>

export const Default: Story = {
  args: {},
};
