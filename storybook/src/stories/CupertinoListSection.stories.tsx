import { Meta, StoryObj } from "@storybook/react";
import { CupertinoListSection } from "./CupertinoListSection";

const meta = {
  title: "Cupertino/CupertinoListSection",
  component: CupertinoListSection,
  parameters: {
    layout: "centered",
  },
  argTypes: {
    
  },
} satisfies Meta<typeof CupertinoListSection>;

export default meta
type Story = StoryObj<typeof meta>

export const Default: Story = {
  args: {},
};

export const InsetGrouped: Story = {
  args: {},
};
