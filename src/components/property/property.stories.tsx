import React from "react";
import { ComponentStory, ComponentMeta } from "@storybook/react";

import { PropertyEquipment } from "./property_overview";

// More on default export: https://storybook.js.org/docs/react/writing-stories/introduction#default-export
export default {
  title: "Components/PropertyEquipment",
  component: PropertyEquipment,
  // More on argTypes: https://storybook.js.org/docs/react/api/argtypes
  // argTypes: {
  //   backgroundColor: { control: 'color' },
  // },
} as ComponentMeta<typeof PropertyEquipment>;

// More on component templates: https://storybook.js.org/docs/react/writing-stories/introduction#using-args
const Template: ComponentStory<typeof PropertyEquipment> = (args) => (
  <PropertyEquipment {...args} />
);

export const DefaultPropertyEquipmentScheme = Template.bind({});
// More on args: https://storybook.js.org/docs/react/writing-stories/args
DefaultPropertyEquipmentScheme.args = {
  equipment: [
    "Guest toilet",
    "Suitable for flat sharing",
    "Fitted kitchen ",
    "Stepless acess",
    "GardenSharing",
  ],
};
