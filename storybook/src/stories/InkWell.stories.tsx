import { Meta, StoryObj } from "@storybook/react";
import { InkWell } from "./InkWell";

const meta = {
  title: "Material/InkWell",
  component: InkWell,
  parameters: {
    layout: "centered",
  },
  argTypes: {
    
  },
} satisfies Meta<typeof InkWell>;

export default meta
type Story = StoryObj<typeof meta>

export const Default: Story = {
  args: {},
};
