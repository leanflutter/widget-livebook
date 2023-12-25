import { Meta, StoryObj } from "@storybook/react";
import { CupertinoActivityIndicator } from "./CupertinoActivityIndicator";

const meta = {
  title: "Cupertino/CupertinoActivityIndicator",
  component: CupertinoActivityIndicator,
  parameters: {
    layout: "centered",
  },
  argTypes: {
    
  },
} satisfies Meta<typeof CupertinoActivityIndicator>;

export default meta
type Story = StoryObj<typeof meta>

export const Default: Story = {
  args: {},
};
