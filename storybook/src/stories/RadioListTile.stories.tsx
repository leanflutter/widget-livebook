import { Meta, StoryObj } from "@storybook/react";
import { RadioListTile } from "./RadioListTile";

const meta = {
  title: "Material/RadioListTile",
  component: RadioListTile,
  parameters: {
    layout: "centered",
  },
  argTypes: {
    
  },
} satisfies Meta<typeof RadioListTile>;

export default meta
type Story = StoryObj<typeof meta>

export const Default: Story = {
  args: {},
};
