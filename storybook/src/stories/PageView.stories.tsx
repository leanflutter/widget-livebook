import { Meta, StoryObj } from "@storybook/react";
import { PageView } from "./PageView";

const meta = {
  title: "Material/PageView",
  component: PageView,
  parameters: {
    layout: "centered",
  },
  argTypes: {
    
  },
} satisfies Meta<typeof PageView>;

export default meta
type Story = StoryObj<typeof meta>

export const Default: Story = {
  args: {},
};
