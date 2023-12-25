import { Meta, StoryObj } from "@storybook/react";
import { PhysicalModel } from "./PhysicalModel";

const meta = {
  title: "Material/PhysicalModel",
  component: PhysicalModel,
  parameters: {
    layout: "centered",
  },
  argTypes: {
    
  },
} satisfies Meta<typeof PhysicalModel>;

export default meta
type Story = StoryObj<typeof meta>

export const Default: Story = {
  args: {},
};
