import { Meta, StoryObj } from "@storybook/react";
import { Scaffold } from "./Scaffold";

const meta = {
  title: "Material/Scaffold",
  component: Scaffold,
  parameters: {
    layout: "centered",
  },
  argTypes: {
    
  },
} satisfies Meta<typeof Scaffold>;

export default meta
type Story = StoryObj<typeof meta>

export const Default: Story = {
  args: {},
};
