import React from 'react';
import { ComponentStory, ComponentMeta } from '@storybook/react';

import { SearchBar } from './search_bar';

// More on default export: https://storybook.js.org/docs/react/writing-stories/introduction#default-export
export default {
  title: 'Components/SearchBar',
  component: SearchBar,
  // More on argTypes: https://storybook.js.org/docs/react/api/argtypes
  // argTypes: {
  //   backgroundColor: { control: 'color' },
  // },
} as ComponentMeta<typeof SearchBar>;

// More on component templates: https://storybook.js.org/docs/react/writing-stories/introduction#using-args
const Template: ComponentStory<typeof SearchBar> = (args) => <SearchBar {...args} />;

export const DefaultSearchBarScheme = Template.bind({});
// More on args: https://storybook.js.org/docs/react/writing-stories/args
DefaultSearchBarScheme.args = {
  label: 'SearchBar',
};



