import { Meta, StoryObj } from "@storybook/react";
import { CupertinoSwitch } from "./CupertinoSwitch";

const meta = {
  title: "Cupertino/CupertinoSwitch",
  component: CupertinoSwitch,
  parameters: {
    layout: "centered",
  },
  argTypes: {
    
  },
} satisfies Meta<typeof CupertinoSwitch>;

export default meta
type Story = StoryObj<typeof meta>

export const Default: Story = {
  args: {},
};
