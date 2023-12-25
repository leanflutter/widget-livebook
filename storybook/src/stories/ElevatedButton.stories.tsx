import { Meta, StoryObj } from "@storybook/react";
import { ElevatedButton } from "./ElevatedButton";

const meta = {
  title: "Material/ElevatedButton",
  component: ElevatedButton,
  parameters: {
    layout: "centered",
  },
  argTypes: {
    
  },
} satisfies Meta<typeof ElevatedButton>;

export default meta
type Story = StoryObj<typeof meta>

export const Default: Story = {
  args: {},
};
