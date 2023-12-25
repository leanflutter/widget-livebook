import { Meta, StoryObj } from "@storybook/react";
import { Text } from "./Text";

const meta = {
  title: "Material/Text",
  component: Text,
  parameters: {
    layout: "centered",
  },
  argTypes: {
    
  },
} satisfies Meta<typeof Text>;

export default meta
type Story = StoryObj<typeof meta>

export const Default: Story = {
  args: {},
};
