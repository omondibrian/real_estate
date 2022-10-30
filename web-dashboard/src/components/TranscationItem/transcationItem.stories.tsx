import React from "react";
import { ComponentStory, ComponentMeta } from "@storybook/react";

import TranscationItem from "./TranscationItem";

// More on default export: https://storybook.js.org/docs/react/writing-stories/introduction#default-export
export default {
  title: "Components/TranscationItem",
  component: TranscationItem,
  // More on argTypes: https://storybook.js.org/docs/react/api/argtypes
  argTypes: {
    backgroundColor: { control: "color" },
  },
} as ComponentMeta<typeof TranscationItem>;

// More on component templates: https://storybook.js.org/docs/react/writing-stories/introduction#using-args
const Template: ComponentStory<typeof TranscationItem> = (args) => <TranscationItem  {...args}/>

export const PrimaryTranscationItem = Template.bind({});
// More on args: https://storybook.js.org/docs/react/writing-stories/args
PrimaryTranscationItem.args = {
    amount:"$ 275.43",
    name: "Bessie Copper",
    profileImage: "https://randomuser.me/api/portraits/thumb/men/75.jpg",
    timestamp:"July 5 ,2022 - 8:09 PM"

};

