import { Meta, StoryObj } from "@storybook/react";
import { RotationTransition } from "./RotationTransition";

const meta = {
  title: "Widgets/RotationTransition",
  component: RotationTransition,
  parameters: {
    layout: "centered",
  },
  argTypes: {
    
  },
} satisfies Meta<typeof RotationTransition>;

export default meta
type Story = StoryObj<typeof meta>

export const Default: Story = {
  args: {},
};
