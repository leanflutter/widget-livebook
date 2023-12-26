import { Meta, StoryObj } from "@storybook/react";
import { Transform } from "./Transform";

const meta = {
  title: "Widgets/Transform",
  component: Transform,
  parameters: {
    layout: "centered",
  },
  argTypes: {
    
  },
} satisfies Meta<typeof Transform>;

export default meta
type Story = StoryObj<typeof meta>

export const Default: Story = {
  args: {},
};
