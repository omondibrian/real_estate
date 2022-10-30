import React from "react";
import { ComponentStory, ComponentMeta } from "@storybook/react";

import InboxItem from "./inbox";

// More on default export: https://storybook.js.org/docs/react/writing-stories/introduction#default-export
export default {
  title: "Components/InboxItem",
  component: InboxItem,
  // More on argTypes: https://storybook.js.org/docs/react/api/argtypes
  argTypes: {},
} as ComponentMeta<typeof InboxItem>;

// More on component templates: https://storybook.js.org/docs/react/writing-stories/introduction#using-args
const Template: ComponentStory<typeof InboxItem> = (args) => (
  <InboxItem {...args} />
);

export const DefaultInboxItem = Template.bind({});
// More on args: https://storybook.js.org/docs/react/writing-stories/args
DefaultInboxItem.args = {
  name: "Bessie Copper",
  profileImage: "https://randomuser.me/api/portraits/thumb/men/75.jpg",
  timestamp: "Today,8:09 PM",
  propertyName: "Block D",
  roomName:"8th floor,Number 4",
  taskName: "Electricity Problem",
  taskLabel: "Request",
  style:"text-green-800 bg-green-100"
};
