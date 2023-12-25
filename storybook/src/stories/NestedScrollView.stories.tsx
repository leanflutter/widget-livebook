import { Meta, StoryObj } from "@storybook/react";
import { NestedScrollView } from "./NestedScrollView";

const meta = {
  title: "Material/NestedScrollView",
  component: NestedScrollView,
  parameters: {
    layout: "centered",
  },
  argTypes: {
    
  },
} satisfies Meta<typeof NestedScrollView>;

export default meta
type Story = StoryObj<typeof meta>

export const Default: Story = {
  args: {},
};
