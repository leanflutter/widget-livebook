import { Meta, StoryObj } from "@storybook/react";
import { BottomNavigationBar } from "./BottomNavigationBar";

const meta = {
  title: "Material/BottomNavigationBar",
  component: BottomNavigationBar,
  parameters: {
    layout: "centered",
  },
  argTypes: {
    
  },
} satisfies Meta<typeof BottomNavigationBar>;

export default meta
type Story = StoryObj<typeof meta>

export const Default: Story = {
  args: {},
};
