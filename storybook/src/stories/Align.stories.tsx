import { Meta, StoryObj } from "@storybook/react";
import { Align } from "./Align";

const meta = {
  title: "Widgets/Align",
  component: Align,
  parameters: {
    layout: "centered",
  },
  argTypes: {
    
  },
} satisfies Meta<typeof Align>;

export default meta
type Story = StoryObj<typeof meta>

export const Default: Story = {
  args: {},
};
