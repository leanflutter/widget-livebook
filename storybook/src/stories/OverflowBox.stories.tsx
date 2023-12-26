import { Meta, StoryObj } from "@storybook/react";
import { OverflowBox } from "./OverflowBox";

const meta = {
  title: "Widgets/OverflowBox",
  component: OverflowBox,
  parameters: {
    layout: "centered",
  },
  argTypes: {
    
  },
} satisfies Meta<typeof OverflowBox>;

export default meta
type Story = StoryObj<typeof meta>

export const Default: Story = {
  args: {},
};
