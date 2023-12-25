import { Meta, StoryObj } from "@storybook/react";
import { AlertDialog } from "./AlertDialog";

const meta = {
  title: "Material/AlertDialog",
  component: AlertDialog,
  parameters: {
    layout: "centered",
  },
  argTypes: {
    
  },
} satisfies Meta<typeof AlertDialog>;

export default meta
type Story = StoryObj<typeof meta>

export const Default: Story = {
  args: {},
};
