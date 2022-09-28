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
  <AccordionNavMenu  />
);

export const AccordionMenu = Template.bind({});
// More on args: https://storybook.js.org/docs/react/writing-stories/args
// AccordionMenuItem.args = {
//   label: 'AccordionMenu',
// };
