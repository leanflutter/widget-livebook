import { Meta, StoryObj } from "@storybook/react";
import { Image } from "./Image";

const meta = {
  title: "Widgets/Image",
  component: Image,
  parameters: {
    layout: "centered",
  },
  argTypes: {
    
  },
} satisfies Meta<typeof Image>;

export default meta
type Story = StoryObj<typeof meta>

export const Default: Story = {
  args: {},
};
