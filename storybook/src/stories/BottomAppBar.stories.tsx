import { Meta, StoryObj } from "@storybook/react";
import { BottomAppBar } from "./BottomAppBar";

const meta = {
  title: "Material/BottomAppBar",
  component: BottomAppBar,
  parameters: {
    layout: "centered",
  },
  argTypes: {
    
  },
} satisfies Meta<typeof BottomAppBar>;

export default meta
type Story = StoryObj<typeof meta>

export const Default: Story = {
  args: {},
};
