import { Meta, StoryObj } from "@storybook/react";
import { AnimatedCrossFade } from "./AnimatedCrossFade";

const meta = {
  title: "Material/AnimatedCrossFade",
  component: AnimatedCrossFade,
  parameters: {
    layout: "centered",
  },
  argTypes: {
    
  },
} satisfies Meta<typeof AnimatedCrossFade>;

export default meta
type Story = StoryObj<typeof meta>

export const Default: Story = {
  args: {},
};
