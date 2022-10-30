import { ComponentStory, ComponentMeta } from "@storybook/react";

import { AccordionNavMenu } from "./index";
import React from "react";

// More on default export: https://storybook.js.org/docs/react/writing-stories/introduction#default-export
export default {
  title: "Components/AccordionNavMenu",
  component: AccordionNavMenu,
  // More on argTypes: https://storybook.js.org/docs/react/api/argtypes
  // argTypes: {
  //   backgroundColor: { control: 'color' },
  // },
} as ComponentMeta<typeof AccordionNavMenu>;

// More on component templates: https://storybook.js.org/docs/react/writing-stories/introduction#using-args
const Template: ComponentStory<typeof AccordionNavMenu> = (args) => (
  <AccordionNavMenu {...args} />
);

export const AccordionMenu = Template.bind({});
// More on args: https://storybook.js.org/docs/react/writing-stories/args
AccordionMenu.args = {
  properties: [
    {
      expanded: false,
      imageUrl:
        "https://raw.githubusercontent.com/adrianhajdin/projects_realestate/main/assets/images/house.jpg",
      noProperties: "32",
      noRequest: "8",
      noTenants: "10",
      propertyTitle:
        "Salama Properties ThornBridge Cir,Syrance,conecticut 3564",
      propertyList: [
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
      ],
    },
    {
      expanded: false,
      imageUrl:
        "https://raw.githubusercontent.com/adrianhajdin/projects_realestate/main/assets/images/house.jpg",
      noProperties: "32",
      noRequest: "8",
      noTenants: "10",
      propertyTitle:
        "Salama Properties ThornBridge Cir,Syrance,conecticut 3564",
      propertyList: [
        {
          room: "1th Floor,left,room ",
          pill: {
            color: "#59b73d",
            label: "Occupied",
          },
          customerName: "Janie william",
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
      ],
    },
  ],
};
