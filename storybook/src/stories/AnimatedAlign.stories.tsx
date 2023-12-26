import { Meta, StoryObj } from "@storybook/react";
import { AnimatedAlign } from "./AnimatedAlign";

const meta = {
  title: "Widgets/AnimatedAlign",
  component: AnimatedAlign,
  parameters: {
    layout: "centered",
  },
  argTypes: {
    
  },
} satisfies Meta<typeof AnimatedAlign>;

export default meta
type Story = StoryObj<typeof meta>

export const Default: Story = {
  args: {},
};
