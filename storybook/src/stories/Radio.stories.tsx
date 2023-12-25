import { Meta, StoryObj } from "@storybook/react";
import { Radio } from "./Radio";

const meta = {
  title: "Material/Radio",
  component: Radio,
  parameters: {
    layout: "centered",
  },
  argTypes: {
    
  },
} satisfies Meta<typeof Radio>;

export default meta
type Story = StoryObj<typeof meta>

export const Default: Story = {
  args: {},
};
