import { Meta, StoryObj } from "@storybook/react";
import { TabBar } from "./TabBar";

const meta = {
  title: "Material/TabBar",
  component: TabBar,
  parameters: {
    layout: "centered",
  },
  argTypes: {
    
  },
} satisfies Meta<typeof TabBar>;

export default meta
type Story = StoryObj<typeof meta>

export const Default: Story = {
  args: {},
};
