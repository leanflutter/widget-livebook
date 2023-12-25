import { Meta, StoryObj } from "@storybook/react";
import { ReorderableListView } from "./ReorderableListView";

const meta = {
  title: "Material/ReorderableListView",
  component: ReorderableListView,
  parameters: {
    layout: "centered",
  },
  argTypes: {
    
  },
} satisfies Meta<typeof ReorderableListView>;

export default meta
type Story = StoryObj<typeof meta>

export const Default: Story = {
  args: {},
};
