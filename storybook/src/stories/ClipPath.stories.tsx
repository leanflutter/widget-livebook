import { Meta, StoryObj } from "@storybook/react";
import { ClipPath } from "./ClipPath";

const meta = {
  title: "Widgets/ClipPath",
  component: ClipPath,
  parameters: {
    layout: "centered",
  },
  argTypes: {
    
  },
} satisfies Meta<typeof ClipPath>;

export default meta
type Story = StoryObj<typeof meta>

export const Default: Story = {
  args: {},
};
