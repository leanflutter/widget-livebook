import { Meta, StoryObj } from "@storybook/react";
import { GridTile } from "./GridTile";

const meta = {
  title: "Material/GridTile",
  component: GridTile,
  parameters: {
    layout: "centered",
  },
  argTypes: {
    
  },
} satisfies Meta<typeof GridTile>;

export default meta
type Story = StoryObj<typeof meta>

export const Default: Story = {
  args: {},
};
