import { Meta, StoryObj } from "@storybook/react";
import { DecoratedBoxTransition } from "./DecoratedBoxTransition";

const meta = {
  title: "Material/DecoratedBoxTransition",
  component: DecoratedBoxTransition,
  parameters: {
    layout: "centered",
  },
  argTypes: {
    
  },
} satisfies Meta<typeof DecoratedBoxTransition>;

export default meta
type Story = StoryObj<typeof meta>

export const Default: Story = {
  args: {},
};
