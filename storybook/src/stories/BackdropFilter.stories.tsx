import { Meta, StoryObj } from "@storybook/react";
import { BackdropFilter } from "./BackdropFilter";

const meta = {
  title: "Widgets/BackdropFilter",
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
