import { Meta, StoryObj } from "@storybook/react";
import { BottomSheet } from "./BottomSheet";

const meta = {
  title: "Material/BottomSheet",
  component: BottomSheet,
  parameters: {
    layout: "centered",
  },
  argTypes: {
    
  },
} satisfies Meta<typeof BottomSheet>;

export default meta
type Story = StoryObj<typeof meta>

export const Default: Story = {
  args: {},
};
