import React from "react";
interface SearchProps {
  /**
   * list label
   */
  label: string;

  /**
   * Optional click handler
   */
  onClick?: () => void;
}
/**
 * performs the search operation
 */
export const SearchBar = (props:SearchProps) => {
  return <div>SearchBar</div>;
};
