import { Meta, StoryObj } from "@storybook/react";
import { SimpleDialog } from "./SimpleDialog";

const meta = {
  title: "Material/SimpleDialog",
  component: SimpleDialog,
  parameters: {
    layout: "centered",
  },
  argTypes: {
    
  },
} satisfies Meta<typeof SimpleDialog>;

export default meta
type Story = StoryObj<typeof meta>

export const Default: Story = {
  args: {},
};
