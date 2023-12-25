import { Meta, StoryObj } from "@storybook/react";
import { CupertinoContextMenu } from "./CupertinoContextMenu";

const meta = {
  title: "Cupertino/CupertinoContextMenu",
  component: CupertinoContextMenu,
  parameters: {
    layout: "centered",
  },
  argTypes: {
    
  },
} satisfies Meta<typeof CupertinoContextMenu>;

export default meta
type Story = StoryObj<typeof meta>

export const Default: Story = {
  args: {},
};
