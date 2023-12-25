import { Meta, StoryObj } from "@storybook/react";
import { AnimatedSwitcher } from "./AnimatedSwitcher";

const meta = {
  title: "Material/AnimatedSwitcher",
  component: AnimatedSwitcher,
  parameters: {
    layout: "centered",
  },
  argTypes: {
    
  },
} satisfies Meta<typeof AnimatedSwitcher>;

export default meta
type Story = StoryObj<typeof meta>

export const Default: Story = {
  args: {},
};
