import { Meta, StoryObj } from "@storybook/react";
import { CircularProgressIndicator } from "./CircularProgressIndicator";

const meta = {
  title: "Material/CircularProgressIndicator",
  component: CircularProgressIndicator,
  parameters: {
    layout: "centered",
  },
  argTypes: {
    
  },
} satisfies Meta<typeof CircularProgressIndicator>;

export default meta
type Story = StoryObj<typeof meta>

export const Default: Story = {
  args: {},
};
