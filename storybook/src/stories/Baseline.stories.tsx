import { Meta, StoryObj } from "@storybook/react";
import { Baseline } from "./Baseline";

const meta = {
  title: "Material/Baseline",
  component: Baseline,
  parameters: {
    layout: "centered",
  },
  argTypes: {
    
  },
} satisfies Meta<typeof Baseline>;

export default meta
type Story = StoryObj<typeof meta>

export const Default: Story = {
  args: {},
};
