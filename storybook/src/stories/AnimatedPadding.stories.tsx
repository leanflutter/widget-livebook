import { Meta, StoryObj } from "@storybook/react";
import { AnimatedPadding } from "./AnimatedPadding";

const meta = {
  title: "Material/AnimatedPadding",
  component: AnimatedPadding,
  parameters: {
    layout: "centered",
  },
  argTypes: {
    
  },
} satisfies Meta<typeof AnimatedPadding>;

export default meta
type Story = StoryObj<typeof meta>

export const Default: Story = {
  args: {},
};
