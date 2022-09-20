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
DefaultTenantInfoScheme.args = {};
