import { Meta, StoryObj } from "@storybook/react";
import { DefaultTextStyle } from "./DefaultTextStyle";

const meta = {
  title: "Widgets/DefaultTextStyle",
  component: DefaultTextStyle,
  parameters: {
    layout: "centered",
  },
  argTypes: {
    
  },
} satisfies Meta<typeof DefaultTextStyle>;

export default meta
type Story = StoryObj<typeof meta>

export const Default: Story = {
  args: {},
};
