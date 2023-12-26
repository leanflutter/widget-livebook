import { Meta, StoryObj } from "@storybook/react";
import { Table } from "./Table";

const meta = {
  title: "Widgets/Table",
  component: Table,
  parameters: {
    layout: "centered",
  },
  argTypes: {
    
  },
} satisfies Meta<typeof Table>;

export default meta
type Story = StoryObj<typeof meta>

export const Default: Story = {
  args: {},
};
