import { Meta, StoryObj } from "@storybook/react";
import { Divider } from "./Divider";

const meta = {
  title: "Material/Divider",
  component: Divider,
  parameters: {
    layout: "centered",
  },
  argTypes: {
    
  },
} satisfies Meta<typeof Divider>;

export default meta
type Story = StoryObj<typeof meta>

export const Default: Story = {
  args: {},
};
