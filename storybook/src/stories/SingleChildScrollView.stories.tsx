import { Meta, StoryObj } from "@storybook/react";
import { SingleChildScrollView } from "./SingleChildScrollView";

const meta = {
  title: "Material/SingleChildScrollView",
  component: SingleChildScrollView,
  parameters: {
    layout: "centered",
  },
  argTypes: {
    
  },
} satisfies Meta<typeof SingleChildScrollView>;

export default meta
type Story = StoryObj<typeof meta>

export const Default: Story = {
  args: {},
};
