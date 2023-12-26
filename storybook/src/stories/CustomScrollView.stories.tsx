import { Meta, StoryObj } from "@storybook/react";
import { CustomScrollView } from "./CustomScrollView";

const meta = {
  title: "Widgets/CustomScrollView",
  component: CustomScrollView,
  parameters: {
    layout: "centered",
  },
  argTypes: {
    
  },
} satisfies Meta<typeof CustomScrollView>;

export default meta
type Story = StoryObj<typeof meta>

export const Default: Story = {
  args: {},
};
