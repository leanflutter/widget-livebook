import { Meta, StoryObj } from "@storybook/react";
import { AnimatedPositioned } from "./AnimatedPositioned";

const meta = {
  title: "Material/AnimatedPositioned",
  component: AnimatedPositioned,
  parameters: {
    layout: "centered",
  },
  argTypes: {
    
  },
} satisfies Meta<typeof AnimatedPositioned>;

export default meta
type Story = StoryObj<typeof meta>

export const Default: Story = {
  args: {},
};
