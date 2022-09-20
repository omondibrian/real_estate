import React from "react";
interface PropertyProps {
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
 * shows pictures for a particular property
 */
export const Property = (props:PropertyProps) => {
  return <div>property listing</div>;
};
