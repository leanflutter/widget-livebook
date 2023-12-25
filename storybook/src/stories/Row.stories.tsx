import { Meta, StoryObj } from "@storybook/react";
import { Row } from "./Row";

const meta = {
  title: "Material/Row",
  component: Row,
  parameters: {
    layout: "centered",
  },
  argTypes: {
    
  },
} satisfies Meta<typeof Row>;

export default meta
type Story = StoryObj<typeof meta>

export const Default: Story = {
  args: {},
};
