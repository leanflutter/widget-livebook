import { Meta, StoryObj } from "@storybook/react";
import { Positioned } from "./Positioned";

const meta = {
  title: "Material/Positioned",
  component: Positioned,
  parameters: {
    layout: "centered",
  },
  argTypes: {
    
  },
} satisfies Meta<typeof Positioned>;

export default meta
type Story = StoryObj<typeof meta>

export const Default: Story = {
  args: {},
};
