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
const Template: ComponentStory<typeof PropertyFilter> = (args) => <div className="ml-16"><PropertyFilter {...args} /></div>;

export const Occupied = Template.bind({});
// More on args: https://storybook.js.org/docs/react/writing-stories/args
Occupied.args = {
  label: ' horizontal PropertyFilter',
  options:'maintenance'
};



