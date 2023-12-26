import { Meta, StoryObj } from "@storybook/react";
import { Dismissible } from "./Dismissible";

const meta = {
  title: "Widgets/Dismissible",
  component: Dismissible,
  parameters: {
    layout: "centered",
  },
  argTypes: {
    
  },
} satisfies Meta<typeof Dismissible>;

export default meta
type Story = StoryObj<typeof meta>

export const Default: Story = {
  args: {},
};
