import { Meta, StoryObj } from "@storybook/react";
import { TextFormField } from "./TextFormField";

const meta = {
  title: "Material/TextFormField",
  component: TextFormField,
  parameters: {
    layout: "centered",
  },
  argTypes: {
    
  },
} satisfies Meta<typeof TextFormField>;

export default meta
type Story = StoryObj<typeof meta>

export const Default: Story = {
  args: {},
};
