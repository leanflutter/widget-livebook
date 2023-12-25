import { Meta, StoryObj } from "@storybook/react";
import { Draggable } from "./Draggable";

const meta = {
  title: "Material/Draggable",
  component: Draggable,
  parameters: {
    layout: "centered",
  },
  argTypes: {
    
  },
} satisfies Meta<typeof Draggable>;

export default meta
type Story = StoryObj<typeof meta>

export const Default: Story = {
  args: {},
};
