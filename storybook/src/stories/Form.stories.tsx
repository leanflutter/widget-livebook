import { Meta, StoryObj } from "@storybook/react";
import { Form } from "./Form";

const meta = {
  title: "Widgets/Form",
  component: Form,
  parameters: {
    layout: "centered",
  },
  argTypes: {
    
  },
} satisfies Meta<typeof Form>;

export default meta
type Story = StoryObj<typeof meta>

export const Default: Story = {
  args: {},
};
