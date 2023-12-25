import { Meta, StoryObj } from "@storybook/react";
import { CupertinoSlider } from "./CupertinoSlider";

const meta = {
  title: "Cupertino/CupertinoSlider",
  component: CupertinoSlider,
  parameters: {
    layout: "centered",
  },
  argTypes: {
    
  },
} satisfies Meta<typeof CupertinoSlider>;

export default meta
type Story = StoryObj<typeof meta>

export const Default: Story = {
  args: {},
};
