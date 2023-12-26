import { Meta, StoryObj } from "@storybook/react";
import { AnimatedList } from "./AnimatedList";

const meta = {
  title: "Widgets/AnimatedList",
  component: AnimatedList,
  parameters: {
    layout: "centered",
  },
  argTypes: {
    
  },
} satisfies Meta<typeof AnimatedList>;

export default meta
type Story = StoryObj<typeof meta>

export const Default: Story = {
  args: {},
};
