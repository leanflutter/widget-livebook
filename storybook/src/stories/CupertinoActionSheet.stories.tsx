import { Meta, StoryObj } from "@storybook/react";
import { CupertinoActionSheet } from "./CupertinoActionSheet";

const meta = {
  title: "Cupertino/CupertinoActionSheet",
  component: CupertinoActionSheet,
  parameters: {
    layout: "centered",
  },
  argTypes: {
    
  },
} satisfies Meta<typeof CupertinoActionSheet>;

export default meta
type Story = StoryObj<typeof meta>

export const Default: Story = {
  args: {},
};
