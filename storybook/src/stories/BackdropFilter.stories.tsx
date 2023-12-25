import { Meta, StoryObj } from "@storybook/react";
import { BackdropFilter } from "./BackdropFilter";

const meta = {
  title: "Material/BackdropFilter",
  component: BackdropFilter,
  parameters: {
    layout: "centered",
  },
  argTypes: {
    
  },
} satisfies Meta<typeof BackdropFilter>;

export default meta
type Story = StoryObj<typeof meta>

export const Default: Story = {
  args: {},
};
