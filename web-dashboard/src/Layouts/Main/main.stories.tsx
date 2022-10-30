import React from "react";
import { ComponentStory, ComponentMeta } from "@storybook/react";
import MainLayout from "./index";
import { AccordionNavMenu } from "../../components/accordionMenu";
import { PropertyFilter } from "../../components/filter/filter_tab";
import { SearchBar } from "../../components/search/search_bar";

// More on default export: https://storybook.js.org/docs/react/writing-stories/introduction#default-export
export default {
  title: "Layouts/Main",
  component: MainLayout,
  // More on argTypes: https://storybook.js.org/docs/react/api/argtypes
  // argTypes: {
  //   backgroundColor: { control: 'color' },
  // },
} as ComponentMeta<typeof MainLayout>;

// More on component templates: https://storybook.js.org/docs/react/writing-stories/introduction#using-args
const Template: ComponentStory<typeof MainLayout> = (args) => (
  <MainLayout>
    <div className="flex-col  ">
      <div className="font-bold text-sm  z-20 mb-6">My Properties</div>
      <SearchBar label="query" />
      <div className=" flex justify-between text-center mt-6">
        <div className="text-sm text-gray-400  ml-3 font-medium ">
          3 Property Places
        </div>
        <PropertyFilter label="filt" options="vaccant" />
      </div>
      <AccordionNavMenu />
    </div>
  </MainLayout>
);

export const LayoutScheme = Template.bind({});

