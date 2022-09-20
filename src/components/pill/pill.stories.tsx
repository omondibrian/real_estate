import React from 'react';
import { ComponentStory, ComponentMeta } from '@storybook/react';

import { PillTab } from './index';

// More on default export: https://storybook.js.org/docs/react/writing-stories/introduction#default-export
export default {
  title: 'Components/Pill',
  component: PillTab,
  // More on argTypes: https://storybook.js.org/docs/react/api/argtypes
  argTypes: {
    backgroundColor: { control: 'color' },
  },
} as ComponentMeta<typeof PillTab>;

// More on component templates: https://storybook.js.org/docs/react/writing-stories/introduction#using-args
const Template: ComponentStory<typeof PillTab> = (args) => <PillTab {...args} />;

export const Occupied = Template.bind({});
// More on args: https://storybook.js.org/docs/react/writing-stories/args
Occupied.args = {
  backgroundColor: ' #59b73d',
  labelText: 'occupied',
};


export const Request = Template.bind({});
// More on args: https://storybook.js.org/docs/react/writing-stories/args
Request.args = {
  backgroundColor: '#474861',
  labelText: 'Request',
};

export const Maintenance = Template.bind({});
// More on args: https://storybook.js.org/docs/react/writing-stories/args
Maintenance.args = {
  backgroundColor: '#f16a2e',
  labelText: 'Maintenance',
};


export const Vacant = Template.bind({});
// More on args: https://storybook.js.org/docs/react/writing-stories/args
Vacant.args = {
  backgroundColor: '#463587',
  labelText: 'vacant',
};


export const IconPill = Template.bind({});
// More on args: https://storybook.js.org/docs/react/writing-stories/args
IconPill.args = {
  backgroundColor: '#7480fb',
  labelText: 'Show property calender',
  icon: true
};




