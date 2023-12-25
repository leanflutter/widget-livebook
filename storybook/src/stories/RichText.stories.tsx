import { Meta, StoryObj } from "@storybook/react";
import { RichText } from "./RichText";

const meta = {
  title: "Material/RichText",
  component: RichText,
  parameters: {
    layout: "centered",
  },
  argTypes: {
    
  },
} satisfies Meta<typeof RichText>;

export default meta
type Story = StoryObj<typeof meta>

export const Default: Story = {
  args: {},
};
