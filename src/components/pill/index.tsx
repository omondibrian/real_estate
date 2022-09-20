import React from "react";
import { OccupiedBadge, PillIcon } from "./styles";
import Image from "next/image";
import Calender from "../../../public/assets/icons/calender.png";

export interface PillProps {
  /**
   * pill background color
   */
  backgroundColor: string;
  /**
   * pill title
   */
  labelText: string;
  /**
   * pill icon
   */
  icon?: boolean;
  /**
   * Optional click handler
   */
  onClick?: () => void;
}

export function PillTab(props: PillProps) {
  return (
    <OccupiedBadge backgroundColor={props.backgroundColor}>
      {props.icon && (
        <Image src="/assets/icons/calender.png" height="30px" width="30px" layout="intrinsic" />
      )}
      {props.labelText}
    </OccupiedBadge>
  );
}

// #59b73d green
// #f16a2e orange
// #474861 requested
//#463587 violet
// #7480fb blue
