import { Meta, StoryObj } from "@storybook/react";
import { Chip } from "./Chip";

const meta = {
  title: "Material/Chip",
  component: Chip,
  parameters: {
    layout: "centered",
  },
  argTypes: {
    
  },
} satisfies Meta<typeof Chip>;

export default meta
type Story = StoryObj<typeof meta>

export const Default: Story = {
  args: {},
};
