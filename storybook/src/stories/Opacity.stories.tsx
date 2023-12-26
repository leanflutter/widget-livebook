import { Meta, StoryObj } from "@storybook/react";
import { Opacity } from "./Opacity";

const meta = {
  title: "Widgets/Opacity",
  component: Opacity,
  parameters: {
    layout: "centered",
  },
  argTypes: {
    
  },
} satisfies Meta<typeof Opacity>;

export default meta
type Story = StoryObj<typeof meta>

export const Default: Story = {
  args: {},
};
