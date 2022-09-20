import React from "react";

interface FilterProps {
  /**
   * filter option
   */
  label: string;
  /**
   * options to be passesd in a filter block
   */
  options: "vaccant" | "occupied" | "maintenance" | "requested";
  /**
   * Optional click handler
   */
  onClick?: () => void;
}
/**
 * shows filters for the proprty search
 */
export const PropertyFilter = (props: FilterProps) => {
  return <div>Property Filter</div>;
};
