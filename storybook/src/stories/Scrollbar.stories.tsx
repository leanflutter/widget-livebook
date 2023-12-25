import { Meta, StoryObj } from "@storybook/react";
import { Scrollbar } from "./Scrollbar";

const meta = {
  title: "Material/Scrollbar",
  component: Scrollbar,
  parameters: {
    layout: "centered",
  },
  argTypes: {
    
  },
} satisfies Meta<typeof Scrollbar>;

export default meta
type Story = StoryObj<typeof meta>

export const Default: Story = {
  args: {},
};
