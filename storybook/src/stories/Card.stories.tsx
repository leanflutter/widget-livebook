import { Meta, StoryObj } from "@storybook/react";
import { Card } from "./Card";

const meta = {
  title: "Material/Card",
  component: Card,
  parameters: {
    layout: "centered",
  },
  argTypes: {
    
  },
} satisfies Meta<typeof Card>;

export default meta
type Story = StoryObj<typeof meta>

export const Default: Story = {
  args: {},
};
