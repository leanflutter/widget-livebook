import { Meta, StoryObj } from "@storybook/react";
import { ClipRect } from "./ClipRect";

const meta = {
  title: "Material/ClipRect",
  component: ClipRect,
  parameters: {
    layout: "centered",
  },
  argTypes: {
    
  },
} satisfies Meta<typeof ClipRect>;

export default meta
type Story = StoryObj<typeof meta>

export const Default: Story = {
  args: {},
};
