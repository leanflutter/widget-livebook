import { Meta, StoryObj } from "@storybook/react";
import { AspectRatio } from "./AspectRatio";

const meta = {
  title: "Material/AspectRatio",
  component: AspectRatio,
  parameters: {
    layout: "centered",
  },
  argTypes: {
    
  },
} satisfies Meta<typeof AspectRatio>;

export default meta
type Story = StoryObj<typeof meta>

export const Default: Story = {
  args: {},
};
