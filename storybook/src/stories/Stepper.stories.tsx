import { Meta, StoryObj } from "@storybook/react";
import { Stepper } from "./Stepper";

const meta = {
  title: "Material/Stepper",
  component: Stepper,
  parameters: {
    layout: "centered",
  },
  argTypes: {
    
  },
} satisfies Meta<typeof Stepper>;

export default meta
type Story = StoryObj<typeof meta>

export const Default: Story = {
  args: {},
};
