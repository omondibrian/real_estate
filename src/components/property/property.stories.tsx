import React from 'react';
import { ComponentStory, ComponentMeta } from '@storybook/react';

import { Property } from './property_overview';

// More on default export: https://storybook.js.org/docs/react/writing-stories/introduction#default-export
export default {
  title: 'Components/Property',
  component: Property,
  // More on argTypes: https://storybook.js.org/docs/react/api/argtypes
  // argTypes: {
  //   backgroundColor: { control: 'color' },
  // },
} as ComponentMeta<typeof Property>;

// More on component templates: https://storybook.js.org/docs/react/writing-stories/introduction#using-args
const Template: ComponentStory<typeof Property> = (args) => <Property {...args} />;

export const DefaultPropertyScheme = Template.bind({});
// More on args: https://storybook.js.org/docs/react/writing-stories/args
DefaultPropertyScheme.args = {
  label: 'Property',
};



