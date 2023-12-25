import { Meta, StoryObj } from "@storybook/react";
import { FlutterLogo } from "./FlutterLogo";

const meta = {
  title: "Material/FlutterLogo",
  component: FlutterLogo,
  parameters: {
    layout: "centered",
  },
  argTypes: {
    
  },
} satisfies Meta<typeof FlutterLogo>;

export default meta
type Story = StoryObj<typeof meta>

export const Default: Story = {
  args: {},
};
