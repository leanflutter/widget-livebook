import { Meta, StoryObj } from "@storybook/react";
import { CupertinoDatePicker } from "./CupertinoDatePicker";

const meta = {
  title: "Cupertino/CupertinoDatePicker",
  component: CupertinoDatePicker,
  parameters: {
    layout: "centered",
  },
  argTypes: {
    
  },
} satisfies Meta<typeof CupertinoDatePicker>;

export default meta
type Story = StoryObj<typeof meta>

export const Default: Story = {
  args: {},
};
