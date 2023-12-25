import { Meta, StoryObj } from "@storybook/react";
import { RefreshIndicator } from "./RefreshIndicator";

const meta = {
  title: "Material/RefreshIndicator",
  component: RefreshIndicator,
  parameters: {
    layout: "centered",
  },
  argTypes: {
    
  },
} satisfies Meta<typeof RefreshIndicator>;

export default meta
type Story = StoryObj<typeof meta>

export const Default: Story = {
  args: {},
};
