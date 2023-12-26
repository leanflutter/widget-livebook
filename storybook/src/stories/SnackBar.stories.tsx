import { Meta, StoryObj } from "@storybook/react";
import { SnackBar } from "./SnackBar";

const meta = {
  title: "Material/SnackBar",
  component: SnackBar,
  parameters: {
    layout: "centered",
  },
  argTypes: {
    
  },
} satisfies Meta<typeof SnackBar>;

export default meta
type Story = StoryObj<typeof meta>

export const Default: Story = {
  args: {},
};
