import { Meta, StoryObj } from "@storybook/react";
import { DropdownButton } from "./DropdownButton";

const meta = {
  title: "Material/DropdownButton",
  component: DropdownButton,
  parameters: {
    layout: "centered",
  },
  argTypes: {
    
  },
} satisfies Meta<typeof DropdownButton>;

export default meta
type Story = StoryObj<typeof meta>

export const Default: Story = {
  args: {},
};
