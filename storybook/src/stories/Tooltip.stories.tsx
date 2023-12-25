import { Meta, StoryObj } from "@storybook/react";
import { Tooltip } from "./Tooltip";

const meta = {
  title: "Material/Tooltip",
  component: Tooltip,
  parameters: {
    layout: "centered",
  },
  argTypes: {
    
  },
} satisfies Meta<typeof Tooltip>;

export default meta
type Story = StoryObj<typeof meta>

export const Default: Story = {
  args: {},
};
