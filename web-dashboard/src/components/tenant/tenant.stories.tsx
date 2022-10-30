import React from "react";
import { ComponentStory, ComponentMeta } from "@storybook/react";

import { TenantInfo } from "./tenant_info";

// More on default export: https://storybook.js.org/docs/react/writing-stories/introduction#default-export
export default {
  title: "Components/TenantInfo",
  component: TenantInfo,
  // More on argTypes: https://storybook.js.org/docs/react/api/argtypes
  // argTypes: {
  //   backgroundColor: { control: 'color' },
  // },
} as ComponentMeta<typeof TenantInfo>;

// More on component templates: https://storybook.js.org/docs/react/writing-stories/introduction#using-args
const Template: ComponentStory<typeof TenantInfo> = (args) => (
  <TenantInfo {...args} />
);

export const DefaultTenantInfoScheme = Template.bind({});
// More on args: https://storybook.js.org/docs/react/writing-stories/args
DefaultTenantInfoScheme.args = {
  name: "Janie william",
  contact: "(254) 555-101",
  placementDate: "6 August 2022",
  pricePerMonth: "$291.23",
  profileUrl: "https://images.unsplash.com/photo-1518791841217-8f162f1e1131?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60",
  status: "Active",
  onClick: () => {
    console.log("handling default tenant info message scheme");
  },
};
