import { Meta, StoryObj } from "@storybook/react";
import { CupertinoNavigationBar } from "./CupertinoNavigationBar";

const meta = {
  title: "Cupertino/CupertinoNavigationBar",
  component: CupertinoNavigationBar,
  parameters: {
    layout: "centered",
  },
  argTypes: {
    
  },
} satisfies Meta<typeof CupertinoNavigationBar>;

export default meta
type Story = StoryObj<typeof meta>

export const Default: Story = {
  args: {},
};
