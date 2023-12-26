import { Meta, StoryObj } from "@storybook/react";
import { Flow } from "./Flow";

const meta = {
  title: "Widgets/Flow",
  component: Flow,
  parameters: {
    layout: "centered",
  },
  argTypes: {
    
  },
} satisfies Meta<typeof Flow>;

export default meta
type Story = StoryObj<typeof meta>

export const Default: Story = {
  args: {},
};
