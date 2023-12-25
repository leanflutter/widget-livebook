import { Meta, StoryObj } from "@storybook/react";
import { AnimatedPhysicalModel } from "./AnimatedPhysicalModel";

const meta = {
  title: "Material/AnimatedPhysicalModel",
  component: AnimatedPhysicalModel,
  parameters: {
    layout: "centered",
  },
  argTypes: {
    
  },
} satisfies Meta<typeof AnimatedPhysicalModel>;

export default meta
type Story = StoryObj<typeof meta>

export const Default: Story = {
  args: {},
};
