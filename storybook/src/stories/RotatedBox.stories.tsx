import { Meta, StoryObj } from "@storybook/react";
import { RotatedBox } from "./RotatedBox";

const meta = {
  title: "Material/RotatedBox",
  component: RotatedBox,
  parameters: {
    layout: "centered",
  },
  argTypes: {
    
  },
} satisfies Meta<typeof RotatedBox>;

export default meta
type Story = StoryObj<typeof meta>

export const Default: Story = {
  args: {},
};
