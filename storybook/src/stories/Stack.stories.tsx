import { Meta, StoryObj } from "@storybook/react";
import { Stack } from "./Stack";

const meta = {
  title: "Widgets/Stack",
  component: Stack,
  parameters: {
    layout: "centered",
  },
  argTypes: {
    
  },
} satisfies Meta<typeof Stack>;

export default meta
type Story = StoryObj<typeof meta>

export const Default: Story = {
  args: {},
};
