import { Meta, StoryObj } from "@storybook/react";
import { OutlinedButton } from "./OutlinedButton";

const meta = {
  title: "Material/OutlinedButton",
  component: OutlinedButton,
  parameters: {
    layout: "centered",
  },
  argTypes: {
    
  },
} satisfies Meta<typeof OutlinedButton>;

export default meta
type Story = StoryObj<typeof meta>

export const Default: Story = {
  args: {},
};
