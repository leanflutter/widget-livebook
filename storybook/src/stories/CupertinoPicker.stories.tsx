import { Meta, StoryObj } from "@storybook/react";
import { CupertinoPicker } from "./CupertinoPicker";

const meta = {
  title: "Cupertino/CupertinoPicker",
  component: CupertinoPicker,
  parameters: {
    layout: "centered",
  },
  argTypes: {
    
  },
} satisfies Meta<typeof CupertinoPicker>;

export default meta
type Story = StoryObj<typeof meta>

export const Default: Story = {
  args: {},
};
