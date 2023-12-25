import { Meta, StoryObj } from "@storybook/react";
import { ListView } from "./ListView";

const meta = {
  title: "Material/ListView",
  component: ListView,
  parameters: {
    layout: "centered",
  },
  argTypes: {
    
  },
} satisfies Meta<typeof ListView>;

export default meta
type Story = StoryObj<typeof meta>

export const Default: Story = {
  args: {},
};
