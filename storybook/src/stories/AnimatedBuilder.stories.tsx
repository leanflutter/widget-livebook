import { Meta, StoryObj } from "@storybook/react";
import { AnimatedBuilder } from "./AnimatedBuilder";

const meta = {
  title: "Widgets/AnimatedBuilder",
  component: AnimatedBuilder,
  parameters: {
    layout: "centered",
  },
  argTypes: {
    
  },
} satisfies Meta<typeof AnimatedBuilder>;

export default meta
type Story = StoryObj<typeof meta>

export const Default: Story = {
  args: {},
};
