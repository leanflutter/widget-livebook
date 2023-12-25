import { Meta, StoryObj } from "@storybook/react";
import { Slider } from "./Slider";

const meta = {
  title: "Material/Slider",
  component: Slider,
  parameters: {
    layout: "centered",
  },
  argTypes: {
    
  },
} satisfies Meta<typeof Slider>;

export default meta
type Story = StoryObj<typeof meta>

export const Default: Story = {
  args: {},
};
