import { Meta, StoryObj } from "@storybook/react";
import { AppBar } from "./AppBar";

const meta = {
  title: "Material/AppBar",
  component: AppBar,
  parameters: {
    layout: "centered",
  },
  argTypes: {
    
  },
} satisfies Meta<typeof AppBar>;

export default meta
type Story = StoryObj<typeof meta>

export const Default: Story = {
  args: {},
};
