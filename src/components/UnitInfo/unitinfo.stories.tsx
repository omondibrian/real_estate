import React from 'react';
import { ComponentStory, ComponentMeta } from '@storybook/react';

import UnitInfo from './index';

// More on default export: https://storybook.js.org/docs/react/writing-stories/introduction#default-export
export default {
  title: 'Components/UnitInfo',
  component: UnitInfo,
  // More on argTypes: https://storybook.js.org/docs/react/api/argtypes
  // argTypes: {
  //   backgroundColor: { control: 'color' },
  // },
} as ComponentMeta<typeof UnitInfo>;

// More on component templates: https://storybook.js.org/docs/react/writing-stories/introduction#using-args
const Template: ComponentStory<typeof UnitInfo> = (args) => <UnitInfo  />;

export const DefaultUnitInfoScheme = Template.bind({});
// More on args: https://storybook.js.org/docs/react/writing-stories/args
DefaultUnitInfoScheme.args = {
 
};

