import { Meta, StoryObj } from "@storybook/react";
import { RangeSlider } from "./RangeSlider";

const meta = {
  title: "Material/RangeSlider",
  component: RangeSlider,
  parameters: {
    layout: "centered",
  },
  argTypes: {
    
  },
} satisfies Meta<typeof RangeSlider>;

export default meta
type Story = StoryObj<typeof meta>

export const Default: Story = {
  args: {},
};
