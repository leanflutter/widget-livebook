import { Meta, StoryObj } from "@storybook/react";
import { Column } from "./Column";

const meta = {
  title: "Material/Column",
  component: Column,
  parameters: {
    layout: "centered",
  },
  argTypes: {
    
  },
} satisfies Meta<typeof Column>;

export default meta
type Story = StoryObj<typeof meta>

export const Default: Story = {
  args: {},
};
