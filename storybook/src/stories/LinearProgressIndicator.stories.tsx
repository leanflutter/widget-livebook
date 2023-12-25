import { Meta, StoryObj } from "@storybook/react";
import { LinearProgressIndicator } from "./LinearProgressIndicator";

const meta = {
  title: "Material/LinearProgressIndicator",
  component: LinearProgressIndicator,
  parameters: {
    layout: "centered",
  },
  argTypes: {
    
  },
} satisfies Meta<typeof LinearProgressIndicator>;

export default meta
type Story = StoryObj<typeof meta>

export const Default: Story = {
  args: {},
};
