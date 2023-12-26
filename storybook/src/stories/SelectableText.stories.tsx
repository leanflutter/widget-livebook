import { Meta, StoryObj } from "@storybook/react";
import { SelectableText } from "./SelectableText";

const meta = {
  title: "Widgets/SelectableText",
  component: SelectableText,
  parameters: {
    layout: "centered",
  },
  argTypes: {
    
  },
} satisfies Meta<typeof SelectableText>;

export default meta
type Story = StoryObj<typeof meta>

export const Default: Story = {
  args: {},
};
