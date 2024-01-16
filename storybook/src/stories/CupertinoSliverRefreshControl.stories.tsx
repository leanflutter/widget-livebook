import { Meta, StoryObj } from "@storybook/react";
import { CupertinoSliverRefreshControl } from "./CupertinoSliverRefreshControl";

const meta = {
  title: "Cupertino/CupertinoSliverRefreshControl",
  component: CupertinoSliverRefreshControl,
  parameters: {
    layout: "centered",
  },
  argTypes: {
    
  },
} satisfies Meta<typeof CupertinoSliverRefreshControl>;

export default meta
type Story = StoryObj<typeof meta>

export const Default: Story = {
  args: {},
};
