import { Meta, StoryObj } from "@storybook/react";
import { CircleAvatar } from "./CircleAvatar";

const meta = {
  title: "Material/CircleAvatar",
  component: CircleAvatar,
  parameters: {
    layout: "centered",
  },
  argTypes: {
    
  },
} satisfies Meta<typeof CircleAvatar>;

export default meta
type Story = StoryObj<typeof meta>

export const Default: Story = {
  args: {},
};
