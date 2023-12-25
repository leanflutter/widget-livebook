import { Meta, StoryObj } from "@storybook/react";
import { Switch } from "./Switch";

const meta = {
  title: "Material/Switch",
  component: Switch,
  parameters: {
    layout: "centered",
  },
  argTypes: {
    
  },
} satisfies Meta<typeof Switch>;

export default meta
type Story = StoryObj<typeof meta>

export const Default: Story = {
  args: {},
};
