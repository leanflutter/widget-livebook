import { Meta, StoryObj } from "@storybook/react";
import { AnimatedOpacity } from "./AnimatedOpacity";

const meta = {
  title: "Widgets/AnimatedOpacity",
  component: AnimatedOpacity,
  parameters: {
    layout: "centered",
  },
  argTypes: {
    
  },
} satisfies Meta<typeof AnimatedOpacity>;

export default meta
type Story = StoryObj<typeof meta>

export const Default: Story = {
  args: {},
};
