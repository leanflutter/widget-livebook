import { Meta, StoryObj } from "@storybook/react";
import { ConstrainedBox } from "./ConstrainedBox";

const meta = {
  title: "Widgets/ConstrainedBox",
  component: ConstrainedBox,
  parameters: {
    layout: "centered",
  },
  argTypes: {
    
  },
} satisfies Meta<typeof ConstrainedBox>;

export default meta
type Story = StoryObj<typeof meta>

export const Default: Story = {
  args: {},
};
