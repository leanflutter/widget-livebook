import { Meta, StoryObj } from "@storybook/react";
import { GridTileBar } from "./GridTileBar";

const meta = {
  title: "Material/GridTileBar",
  component: GridTileBar,
  parameters: {
    layout: "centered",
  },
  argTypes: {
    
  },
} satisfies Meta<typeof GridTileBar>;

export default meta
type Story = StoryObj<typeof meta>

export const Default: Story = {
  args: {},
};
