import { Meta, StoryObj } from "@storybook/react";
import { GestureDetector } from "./GestureDetector";

const meta = {
  title: "Widgets/GestureDetector",
  component: GestureDetector,
  parameters: {
    layout: "centered",
  },
  argTypes: {
    
  },
} satisfies Meta<typeof GestureDetector>;

export default meta
type Story = StoryObj<typeof meta>

export const Default: Story = {
  args: {},
};
