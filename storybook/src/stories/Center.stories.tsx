import { Meta, StoryObj } from "@storybook/react";
import { Center } from "./Center";

const meta = {
  title: "Widgets/Center",
  component: Center,
  parameters: {
    layout: "centered",
  },
  argTypes: {
    
  },
} satisfies Meta<typeof Center>;

export default meta
type Story = StoryObj<typeof meta>

export const Default: Story = {
  args: {},
};
