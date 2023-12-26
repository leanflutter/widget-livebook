import { Meta, StoryObj } from "@storybook/react";
import { IndexedStack } from "./IndexedStack";

const meta = {
  title: "Widgets/IndexedStack",
  component: IndexedStack,
  parameters: {
    layout: "centered",
  },
  argTypes: {
    
  },
} satisfies Meta<typeof IndexedStack>;

export default meta
type Story = StoryObj<typeof meta>

export const Default: Story = {
  args: {},
};
