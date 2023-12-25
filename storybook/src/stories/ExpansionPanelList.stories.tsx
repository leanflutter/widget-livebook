import { Meta, StoryObj } from "@storybook/react";
import { ExpansionPanelList } from "./ExpansionPanelList";

const meta = {
  title: "Material/ExpansionPanelList",
  component: ExpansionPanelList,
  parameters: {
    layout: "centered",
  },
  argTypes: {
    
  },
} satisfies Meta<typeof ExpansionPanelList>;

export default meta
type Story = StoryObj<typeof meta>

export const Default: Story = {
  args: {},
};
