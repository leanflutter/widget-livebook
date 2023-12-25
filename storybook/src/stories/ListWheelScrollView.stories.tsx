import { Meta, StoryObj } from "@storybook/react";
import { ListWheelScrollView } from "./ListWheelScrollView";

const meta = {
  title: "Material/ListWheelScrollView",
  component: ListWheelScrollView,
  parameters: {
    layout: "centered",
  },
  argTypes: {
    
  },
} satisfies Meta<typeof ListWheelScrollView>;

export default meta
type Story = StoryObj<typeof meta>

export const Default: Story = {
  args: {},
};
