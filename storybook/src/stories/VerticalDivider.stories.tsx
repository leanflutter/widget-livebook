import { Meta, StoryObj } from "@storybook/react";
import { VerticalDivider } from "./VerticalDivider";

const meta = {
  title: "Material/VerticalDivider",
  component: VerticalDivider,
  parameters: {
    layout: "centered",
  },
  argTypes: {
    
  },
} satisfies Meta<typeof VerticalDivider>;

export default meta
type Story = StoryObj<typeof meta>

export const Default: Story = {
  args: {},
};
