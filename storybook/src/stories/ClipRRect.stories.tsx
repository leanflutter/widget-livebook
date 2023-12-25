import { Meta, StoryObj } from "@storybook/react";
import { ClipRRect } from "./ClipRRect";

const meta = {
  title: "Material/ClipRRect",
  component: ClipRRect,
  parameters: {
    layout: "centered",
  },
  argTypes: {
    
  },
} satisfies Meta<typeof ClipRRect>;

export default meta
type Story = StoryObj<typeof meta>

export const Default: Story = {
  args: {},
};
