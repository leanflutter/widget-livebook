import { Meta, StoryObj } from "@storybook/react";
import { ListTile } from "./ListTile";

const meta = {
  title: "Material/ListTile",
  component: ListTile,
  parameters: {
    layout: "centered",
  },
  argTypes: {
    
  },
} satisfies Meta<typeof ListTile>;

export default meta
type Story = StoryObj<typeof meta>

export const Default: Story = {
  args: {},
};
