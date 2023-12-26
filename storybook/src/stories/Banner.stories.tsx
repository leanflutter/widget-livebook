import { Meta, StoryObj } from "@storybook/react";
import { Banner } from "./Banner";

const meta = {
  title: "Widgets/Banner",
  component: Banner,
  parameters: {
    layout: "centered",
  },
  argTypes: {
    
  },
} satisfies Meta<typeof Banner>;

export default meta
type Story = StoryObj<typeof meta>

export const Default: Story = {
  args: {},
};
