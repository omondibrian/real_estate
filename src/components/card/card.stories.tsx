import React from 'react';
import { ComponentStory, ComponentMeta } from '@storybook/react';

import { Card } from './card';

// More on default export: https://storybook.js.org/docs/react/writing-stories/introduction#default-export
export default {
  title: 'Components/card',
  component: Card,
  // More on argTypes: https://storybook.js.org/docs/react/api/argtypes
  argTypes: {
    backgroundColor: { control: 'color' },
  },
} as ComponentMeta<typeof Card>;

// More on component templates: https://storybook.js.org/docs/react/writing-stories/introduction#using-args
const Template: ComponentStory<typeof Card> = (args) => <Card {...args} />;

export const Expanded = Template.bind({});
// More on args: https://storybook.js.org/docs/react/writing-stories/args
Expanded.args = {
  label: ' Expanded Card',
  expanded: true
};

export const Normal = Template.bind({});
Normal.args = {
  label: ' Normal Card',
  expanded: false
};


