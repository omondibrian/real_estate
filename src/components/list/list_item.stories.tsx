import React from "react";
import { ComponentStory, ComponentMeta } from "@storybook/react";

import { ListItem } from "./list_tab_item";

// More on default export: https://storybook.js.org/docs/react/writing-stories/introduction#default-export
export default {
  title: "Components/ListItem",
  component: ListItem,
  // More on argTypes: https://storybook.js.org/docs/react/api/argtypes
  argTypes: {
    backgroundColor: { control: "color" },
  },
} as ComponentMeta<typeof ListItem>;

// More on component templates: https://storybook.js.org/docs/react/writing-stories/introduction#using-args
const Template: ComponentStory<typeof ListItem> = (args) => (
  <ListItem {...args} />
);

export const ListItemDefault = Template.bind({});
// More on args: https://storybook.js.org/docs/react/writing-stories/args
ListItemDefault.args = {
  label: " horizontal ListItem",
};

