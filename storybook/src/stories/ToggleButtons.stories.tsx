import { Meta, StoryObj } from "@storybook/react";
import { ToggleButtons } from "./ToggleButtons";

const meta = {
  title: "Material/ToggleButtons",
  component: ToggleButtons,
  parameters: {
    layout: "centered",
  },
  argTypes: {
    
  },
} satisfies Meta<typeof ToggleButtons>;

export default meta
type Story = StoryObj<typeof meta>

export const Default: Story = {
  args: {},
};
