import { Meta, StoryObj } from "@storybook/react";
import { Padding } from "./Padding";

const meta = {
  title: "Material/Padding",
  component: Padding,
  parameters: {
    layout: "centered",
  },
  argTypes: {
    
  },
} satisfies Meta<typeof Padding>;

export default meta
type Story = StoryObj<typeof meta>

export const Default: Story = {
  args: {},
};
