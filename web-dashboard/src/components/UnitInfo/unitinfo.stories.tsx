import React from "react";
import { ComponentStory, ComponentMeta } from "@storybook/react";

import UnitInfo from "./index";

// More on default export: https://storybook.js.org/docs/react/writing-stories/introduction#default-export
export default {
  title: "Components/UnitInfo",
  component: UnitInfo,
  // More on argTypes: https://storybook.js.org/docs/react/api/argtypes
  // argTypes: {
  //   backgroundColor: { control: 'color' },
  // },
} as ComponentMeta<typeof UnitInfo>;

// More on component templates: https://storybook.js.org/docs/react/writing-stories/introduction#using-args
const Template: ComponentStory<typeof UnitInfo> = (args) => (
  <UnitInfo {...args} />
);

export const DefaultUnitInfoScheme = Template.bind({});
// More on args: https://storybook.js.org/docs/react/writing-stories/args
DefaultUnitInfoScheme.args = {
  roomName: "1st room floor",
  livingSpace: "125 sq m",
  noRooms: "4",
  propertyOverview: [
    "https://raw.githubusercontent.com/adrianhajdin/projects_realestate/main/assets/images/house.jpg",
    "https://raw.githubusercontent.com/adrianhajdin/projects_realestate/main/assets/images/house.jpg",
    "https://raw.githubusercontent.com/adrianhajdin/projects_realestate/main/assets/images/house.jpg",
    "https://raw.githubusercontent.com/adrianhajdin/projects_realestate/main/assets/images/house.jpg",
  ],
  equipments: [
    "Guest toilet",
    "Suitable for flat sharing",
    "Fitted kitchen ",
    "Stepless acess",
    "GardenSharing",
  ],
  tenantInfo: {
    name: "Janie william",
    contact: "(254) 555-101",
    placementDate: "6 August 2022",
    pricePerMonth: "$291.23",
    profileUrl:
      "https://images.unsplash.com/photo-1518791841217-8f162f1e1131?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60",
    status: "Active",
    onClick: () => {
      console.log("handling default tenant info message scheme");
    },
  },
  documents:{
    contractUrl:"#",
    receiptsUrl:"#"
  }
};


