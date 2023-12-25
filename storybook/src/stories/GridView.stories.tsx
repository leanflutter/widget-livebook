import { Meta, StoryObj } from "@storybook/react";
import { GridView } from "./GridView";

const meta = {
  title: "Material/GridView",
  component: GridView,
  parameters: {
    layout: "centered",
  },
  argTypes: {
    
  },
} satisfies Meta<typeof GridView>;

export default meta
type Story = StoryObj<typeof meta>

export const Default: Story = {
  args: {},
};
