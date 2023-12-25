import { Meta, StoryObj } from "@storybook/react";
import { Placeholder } from "./Placeholder";

const meta = {
  title: "Material/Placeholder",
  component: Placeholder,
  parameters: {
    layout: "centered",
  },
  argTypes: {
    
  },
} satisfies Meta<typeof Placeholder>;

export default meta
type Story = StoryObj<typeof meta>

export const Default: Story = {
  args: {},
};
