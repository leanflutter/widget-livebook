import { Meta, StoryObj } from "@storybook/react";
import { CustomPaint } from "./CustomPaint";

const meta = {
  title: "Material/CustomPaint",
  component: CustomPaint,
  parameters: {
    layout: "centered",
  },
  argTypes: {
    
  },
} satisfies Meta<typeof CustomPaint>;

export default meta
type Story = StoryObj<typeof meta>

export const Default: Story = {
  args: {},
};
