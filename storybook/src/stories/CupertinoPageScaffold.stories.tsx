import { Meta, StoryObj } from "@storybook/react";
import { CupertinoPageScaffold } from "./CupertinoPageScaffold";

const meta = {
  title: "Cupertino/CupertinoPageScaffold",
  component: CupertinoPageScaffold,
  parameters: {
    layout: "centered",
  },
  argTypes: {
    
  },
} satisfies Meta<typeof CupertinoPageScaffold>;

export default meta
type Story = StoryObj<typeof meta>

export const Default: Story = {
  args: {},
};
