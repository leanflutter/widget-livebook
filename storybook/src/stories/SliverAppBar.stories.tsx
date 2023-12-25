import { Meta, StoryObj } from "@storybook/react";
import { SliverAppBar } from "./SliverAppBar";

const meta = {
  title: "Material/SliverAppBar",
  component: SliverAppBar,
  parameters: {
    layout: "centered",
  },
  argTypes: {
    
  },
} satisfies Meta<typeof SliverAppBar>;

export default meta
type Story = StoryObj<typeof meta>

export const Default: Story = {
  args: {},
};
