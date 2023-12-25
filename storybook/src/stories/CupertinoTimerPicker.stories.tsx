import { Meta, StoryObj } from "@storybook/react";
import { CupertinoTimerPicker } from "./CupertinoTimerPicker";

const meta = {
  title: "Cupertino/CupertinoTimerPicker",
  component: CupertinoTimerPicker,
  parameters: {
    layout: "centered",
  },
  argTypes: {
    
  },
} satisfies Meta<typeof CupertinoTimerPicker>;

export default meta
type Story = StoryObj<typeof meta>

export const Default: Story = {
  args: {},
};
