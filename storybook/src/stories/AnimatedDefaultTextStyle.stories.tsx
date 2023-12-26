import { Meta, StoryObj } from "@storybook/react";
import { AnimatedDefaultTextStyle } from "./AnimatedDefaultTextStyle";

const meta = {
  title: "Widgets/AnimatedDefaultTextStyle",
  component: AnimatedDefaultTextStyle,
  parameters: {
    layout: "centered",
  },
  argTypes: {
    
  },
} satisfies Meta<typeof AnimatedDefaultTextStyle>;

export default meta
type Story = StoryObj<typeof meta>

export const Default: Story = {
  args: {},
};
