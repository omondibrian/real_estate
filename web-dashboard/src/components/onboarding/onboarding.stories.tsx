import React from 'react';
import { ComponentStory, ComponentMeta } from '@storybook/react';

import { OnBoarding } from './onboarding_form';

// More on default export: https://storybook.js.org/docs/react/writing-stories/introduction#default-export
export default {
  title: 'Components/onBoarding',
  component: OnBoarding,
  // More on argTypes: https://storybook.js.org/docs/react/api/argtypes
  argTypes: {
    backgroundColor: { control: 'color' },
  },
} as ComponentMeta<typeof OnBoarding>;

// More on component templates: https://storybook.js.org/docs/react/writing-stories/introduction#using-args
const Template: ComponentStory<typeof OnBoarding> = (args) => <OnBoarding {...args} />;

export const DefaultOnboardingScheme = Template.bind({});
// More on args: https://storybook.js.org/docs/react/writing-stories/args
DefaultOnboardingScheme.args = {
  label: 'onBoarding',
};



