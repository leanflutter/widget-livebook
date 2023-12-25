import { Meta, StoryObj } from "@storybook/react";
import { SizedBox } from "./SizedBox";

const meta = {
  title: "Material/SizedBox",
  component: SizedBox,
  parameters: {
    layout: "centered",
  },
  argTypes: {
    
  },
} satisfies Meta<typeof SizedBox>;

export default meta
type Story = StoryObj<typeof meta>

export const Default: Story = {
  args: {},
};
