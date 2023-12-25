import { Meta, StoryObj } from "@storybook/react";
import { FlatButton } from "./FlatButton";

const meta = {
  title: "Material/FlatButton",
  component: FlatButton,
  parameters: {
    layout: "centered",
  },
  argTypes: {
    
  },
} satisfies Meta<typeof FlatButton>;

export default meta
type Story = StoryObj<typeof meta>

export const Default: Story = {
  args: {},
};
