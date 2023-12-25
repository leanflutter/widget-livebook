import { Meta, StoryObj } from "@storybook/react";
import { Drawer } from "./Drawer";

const meta = {
  title: "Material/Drawer",
  component: Drawer,
  parameters: {
    layout: "centered",
  },
  argTypes: {
    
  },
} satisfies Meta<typeof Drawer>;

export default meta
type Story = StoryObj<typeof meta>

export const Default: Story = {
  args: {},
};
