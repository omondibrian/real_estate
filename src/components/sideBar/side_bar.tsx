import React from "react";
interface SideBarProps {
  /**
   * list label
   */
  label: string;
  /**
   * dispaly icon
   */
  icon?: string;

  /**
   * Optional click handler
   */
  onClick?: () => void;
}
/**
 * display sidebar navigaion items
 */
export const SideBar = (props:SideBarProps) => {
  return <div>SideBar</div>;
};
