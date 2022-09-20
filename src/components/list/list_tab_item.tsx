import React from "react";
interface ListProps {
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
 * shows filters for the proprty search
 */
export const ListItem = ({ label }: ListProps) => {
  return <div>{label}</div>;
};
