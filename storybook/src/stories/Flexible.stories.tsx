import { Meta, StoryObj } from "@storybook/react";
import { Flexible } from "./Flexible";

const meta = {
  title: "Widgets/Flexible",
  component: Flexible,
  parameters: {
    layout: "centered",
  },
  argTypes: {
    
  },
} satisfies Meta<typeof Flexible>;

export default meta
type Story = StoryObj<typeof meta>

export const Default: Story = {
  args: {},
};
