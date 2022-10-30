import React from "react";
import { Form, SearchInput } from "./style";
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
export const SearchBar = (props: SearchProps) => {
  return (
    <Form>
      <div className="relative">
        <svg
          xmlns="http://www.w3.org/2000/svg"
          className="absolute top-0 bottom-0 w-6 h-6 my-auto text-gray-400 left-3"
          fill="none"
          viewBox="0 0 24 24"
          stroke="currentColor"
        >
          <path
            strokeLinecap="round"
            strokeLinejoin="round"
            strokeWidth={2}
            d="M21 21l-6-6m2-5a7 7 0 11-14 0 7 7 0 0114 0z"
          />
        </svg>
        <SearchInput type="text" placeholder="search" />
      </div>
    </Form>
  );
};
