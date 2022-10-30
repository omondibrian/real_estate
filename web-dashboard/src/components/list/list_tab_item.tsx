import React from "react";
import { PillTab } from "../pill";
interface ListProps {
  /**
   * Optional click handler
   */
  onClick?: () => void;
  propertyList:Array<ItemProps>
}
/**
 * shows filters for the proprty search
 */
export const ListItem = (props: ListProps) => {
  return (
    <ul className="md:w-96  bg-white rounded-lg border border-gray-200 dark:bg-gray-700 dark:border-gray-600 dark:text-white">
      {props.propertyList.map((p) => (
        <Item {...p} />
      ))}
    </ul>
  );
};



export interface ItemProps {
  room: string;
  pill: {
    color: string;
    label: string;
  };
  customerName: string;
  livingSpace: string;
}

const Item = (props: ItemProps) => {
  return (
    <li className=" flex flex-col py-2 px-4 w-full rounded-t-lg border-b border-gray-200 dark:border-gray-600">
      <div className="flex justify-between text-center">
        <div className=" text-sm text-gray-900 font-medium ">{props.room}</div>
        <PillTab
          backgroundColor={props.pill.color}
          labelText={props.pill.label}
        />
      </div>
      <div className="flex justify-between text-center">
        <div className=" text-sm text-gray-400  font-medium pt-2">
          {props.customerName}
        </div>
        <div className=" text-sm text-gray-400 font-medium  pt-2">
          {props.livingSpace}
        </div>
      </div>
    </li>
  );
};
