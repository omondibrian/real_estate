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
  propertyList:[
    {
      room: "1th Floor,left,room ",
      pill: {
        color: "#59b73d",
        label: "Occupied",
      },
      customerName: "John Doe",
      livingSpace: "112 sq m",
    },
    {
      room: "2th Floor,left,room ",
      pill: {
        color: "#463587",
        label: "Vacant",
      },
      customerName: "No tenant",
      livingSpace: "112 sq m",
    },
    {
      room: "3th Floor,left,room ",
      pill: {
        color: "#474861",
        label: "Request",
      },
      customerName: "No tenant",
  
      livingSpace: "118 sq m",
    },
    {
      room: "4th Floor,left,room ",
      pill: {
        color: "#f16a2e",
        label: "Maintenance",
      },
      customerName: "Courtney Henry",
      livingSpace: "118 sq m",
    },
  ]
};

