import React from "react";
import { ComponentStory, ComponentMeta } from "@storybook/react";

import RequestItem from "./RequestItem";

// More on default export: https://storybook.js.org/docs/react/writing-stories/introduction#default-export
export default {
  title: "Components/RequestItem",
  component: RequestItem,
  // More on argTypes: https://storybook.js.org/docs/react/api/argtypes
  argTypes: {
    backgroundColor: { control: "color" },
  },
} as ComponentMeta<typeof RequestItem>;

// More on component templates: https://storybook.js.org/docs/react/writing-stories/introduction#using-args
const Template: ComponentStory<typeof RequestItem> = (args) => <RequestItem  {...args}/>

export const PrimaryRequestItem = Template.bind({});
// More on args: https://storybook.js.org/docs/react/writing-stories/args
PrimaryRequestItem.args = {
    amount:"$ 275.43",
    name: "Bessie Copper",
    profileImage: "https://randomuser.me/api/portraits/thumb/men/75.jpg",
    timestamp:"Today,8:09 PM"

};

