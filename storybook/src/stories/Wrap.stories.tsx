import { Meta, StoryObj } from "@storybook/react";
import { Wrap } from "./Wrap";

const meta = {
  title: "Material/Wrap",
  component: Wrap,
  parameters: {
    layout: "centered",
  },
  argTypes: {
    
  },
} satisfies Meta<typeof Wrap>;

export default meta
type Story = StoryObj<typeof meta>

export const Default: Story = {
  args: {},
};
