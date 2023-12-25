import { Meta, StoryObj } from "@storybook/react";
import { CupertinoButton } from "./CupertinoButton";

const meta = {
  title: "Cupertino/CupertinoButton",
  component: CupertinoButton,
  parameters: {
    layout: "centered",
  },
  argTypes: {
    
  },
} satisfies Meta<typeof CupertinoButton>;

export default meta
type Story = StoryObj<typeof meta>

export const Default: Story = {
  args: {},
};
