import { Meta, StoryObj } from "@storybook/react";
import { DataTable } from "./DataTable";

const meta = {
  title: "Material/DataTable",
  component: DataTable,
  parameters: {
    layout: "centered",
  },
  argTypes: {
    
  },
} satisfies Meta<typeof DataTable>;

export default meta
type Story = StoryObj<typeof meta>

export const Default: Story = {
  args: {},
};
