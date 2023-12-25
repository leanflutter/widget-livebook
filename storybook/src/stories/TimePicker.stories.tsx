import { Meta, StoryObj } from "@storybook/react";
import { TimePicker } from "./TimePicker";

const meta = {
  title: "Material/TimePicker",
  component: TimePicker,
  parameters: {
    layout: "centered",
  },
  argTypes: {
    
  },
} satisfies Meta<typeof TimePicker>;

export default meta
type Story = StoryObj<typeof meta>

export const Default: Story = {
  args: {},
};
