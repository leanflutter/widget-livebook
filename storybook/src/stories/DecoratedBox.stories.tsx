import { Meta, StoryObj } from "@storybook/react";
import { DecoratedBox } from "./DecoratedBox";

const meta = {
  title: "Material/DecoratedBox",
  component: DecoratedBox,
  parameters: {
    layout: "centered",
  },
  argTypes: {
    
  },
} satisfies Meta<typeof DecoratedBox>;

export default meta
type Story = StoryObj<typeof meta>

export const Default: Story = {
  args: {},
};
