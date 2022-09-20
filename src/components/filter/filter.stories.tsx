import React from 'react';
import { ComponentStory, ComponentMeta } from '@storybook/react';

import { PropertyFilter } from './filter_tab';

// More on default export: https://storybook.js.org/docs/react/writing-stories/introduction#default-export
export default {
  title: 'Components/PropertyFilter',
  component: PropertyFilter,
  // More on argTypes: https://storybook.js.org/docs/react/api/argtypes
  argTypes: {
    backgroundColor: { control: 'color' },
  },
} as ComponentMeta<typeof PropertyFilter>;

// More on component templates: https://storybook.js.org/docs/react/writing-stories/introduction#using-args
const Template: ComponentStory<typeof PropertyFilter> = (args) => <PropertyFilter {...args} />;

export const Occupied = Template.bind({});
// More on args: https://storybook.js.org/docs/react/writing-stories/args
Occupied.args = {
  label: ' horizontal PropertyFilter',
  options:'occupied'
};

export const Requested = Template.bind({});
Requested.args = {
  label: ' vertical PropertyFilter',
  options:"requested"
};

export const Maintenance = Template.bind({});
Maintenance.args = {
  label: ' vertical PropertyFilter',
  options:"maintenance"
};

export const Vaccant = Template.bind({});
Vaccant.args = {
  label: ' vertical PropertyFilter',
  options:"vaccant"
};


