import { Meta, StoryObj } from "@storybook/react";
import { CupertinoAlertDialog } from "./CupertinoAlertDialog";

const meta = {
  title: "Cupertino/CupertinoAlertDialog",
  component: CupertinoAlertDialog,
  parameters: {
    layout: "centered",
  },
  argTypes: {
    
  },
} satisfies Meta<typeof CupertinoAlertDialog>;

export default meta
type Story = StoryObj<typeof meta>

export const Default: Story = {
  args: {},
};
