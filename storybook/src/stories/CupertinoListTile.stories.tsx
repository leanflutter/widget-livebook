import { Meta, StoryObj } from "@storybook/react";
import { CupertinoListTile } from "./CupertinoListTile";

const meta = {
  title: "Cupertino/CupertinoListTile",
  component: CupertinoListTile,
  parameters: {
    layout: "centered",
  },
  argTypes: {
    
  },
} satisfies Meta<typeof CupertinoListTile>;

export default meta
type Story = StoryObj<typeof meta>

export const Default: Story = {
  args: {},
};
