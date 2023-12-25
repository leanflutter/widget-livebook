import { Meta, StoryObj } from "@storybook/react";
import { Expanded } from "./Expanded";

const meta = {
  title: "Material/Expanded",
  component: Expanded,
  parameters: {
    layout: "centered",
  },
  argTypes: {
    
  },
} satisfies Meta<typeof Expanded>;

export default meta
type Story = StoryObj<typeof meta>

export const Default: Story = {
  args: {},
};
