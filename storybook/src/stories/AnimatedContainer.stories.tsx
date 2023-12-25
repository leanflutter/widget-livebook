import { Meta, StoryObj } from "@storybook/react";
import { AnimatedContainer } from "./AnimatedContainer";

const meta = {
  title: "Material/AnimatedContainer",
  component: AnimatedContainer,
  parameters: {
    layout: "centered",
  },
  argTypes: {
    
  },
} satisfies Meta<typeof AnimatedContainer>;

export default meta
type Story = StoryObj<typeof meta>

export const Default: Story = {
  args: {},
};
