import { Meta, StoryObj } from "@storybook/react";
import { ClipOval } from "./ClipOval";

const meta = {
  title: "Material/ClipOval",
  component: ClipOval,
  parameters: {
    layout: "centered",
  },
  argTypes: {
    
  },
} satisfies Meta<typeof ClipOval>;

export default meta
type Story = StoryObj<typeof meta>

export const Default: Story = {
  args: {},
};
