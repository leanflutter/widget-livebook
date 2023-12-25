import { Meta, StoryObj } from "@storybook/react";
import { Container } from "./Container";

const meta = {
  title: "Material/Container",
  component: Container,
  parameters: {
    layout: "centered",
  },
  argTypes: {
    
  },
} satisfies Meta<typeof Container>;

export default meta
type Story = StoryObj<typeof meta>

export const Default: Story = {
  args: {},
};
