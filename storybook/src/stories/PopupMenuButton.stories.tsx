import { Meta, StoryObj } from "@storybook/react";
import { PopupMenuButton } from "./PopupMenuButton";

const meta = {
  title: "Material/PopupMenuButton",
  component: PopupMenuButton,
  parameters: {
    layout: "centered",
  },
  argTypes: {
    
  },
} satisfies Meta<typeof PopupMenuButton>;

export default meta
type Story = StoryObj<typeof meta>

export const Default: Story = {
  args: {},
};
