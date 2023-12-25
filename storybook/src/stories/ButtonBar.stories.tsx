import { Meta, StoryObj } from "@storybook/react";
import { ButtonBar } from "./ButtonBar";

const meta = {
  title: "Material/ButtonBar",
  component: ButtonBar,
  parameters: {
    layout: "centered",
  },
  argTypes: {
    
  },
} satisfies Meta<typeof ButtonBar>;

export default meta
type Story = StoryObj<typeof meta>

export const Default: Story = {
  args: {},
};
