import { Meta, StoryObj } from "@storybook/react";
import { AnimatedSize } from "./AnimatedSize";

const meta = {
  title: "Widgets/AnimatedSize",
  component: AnimatedSize,
  parameters: {
    layout: "centered",
  },
  argTypes: {
    
  },
} satisfies Meta<typeof AnimatedSize>;

export default meta
type Story = StoryObj<typeof meta>

export const Default: Story = {
  args: {},
};
