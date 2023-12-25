import { Meta, StoryObj } from "@storybook/react";
import { SizedOverflowBox } from "./SizedOverflowBox";

const meta = {
  title: "Material/SizedOverflowBox",
  component: SizedOverflowBox,
  parameters: {
    layout: "centered",
  },
  argTypes: {
    
  },
} satisfies Meta<typeof SizedOverflowBox>;

export default meta
type Story = StoryObj<typeof meta>

export const Default: Story = {
  args: {},
};
