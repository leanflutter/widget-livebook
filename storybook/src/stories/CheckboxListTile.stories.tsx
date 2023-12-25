import { Meta, StoryObj } from "@storybook/react";
import { CheckboxListTile } from "./CheckboxListTile";

const meta = {
  title: "Material/CheckboxListTile",
  component: CheckboxListTile,
  parameters: {
    layout: "centered",
  },
  argTypes: {
    
  },
} satisfies Meta<typeof CheckboxListTile>;

export default meta
type Story = StoryObj<typeof meta>

export const Default: Story = {
  args: {},
};
