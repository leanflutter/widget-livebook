import { Meta, StoryObj } from "@storybook/react";
import { PositionedTransition } from "./PositionedTransition";

const meta = {
  title: "Widgets/PositionedTransition",
  component: PositionedTransition,
  parameters: {
    layout: "centered",
  },
  argTypes: {
    
  },
} satisfies Meta<typeof PositionedTransition>;

export default meta
type Story = StoryObj<typeof meta>

export const Default: Story = {
  args: {},
};
