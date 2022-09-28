import React from "react";
import { PillTab } from "../pill";
interface ListProps {
  /**
   * Optional click handler
   */
  onClick?: () => void;
}
/**
 * shows filters for the proprty search
 */
export const ListItem = (props: ListProps) => {
  return (
    <ul className="md:w-96  bg-white rounded-lg border border-gray-200 dark:bg-gray-700 dark:border-gray-600 dark:text-white">
      {data.map((p) => (
        <Item {...p} />
      ))}
    </ul>
  );
};

const data = [
  {
    room: "1th Floor,left,room ",
    pill: {
      color: "#59b73d",
      label: "Occupied",
    },
    customerName: "John Doe",
    livingSpace: "112 sq m",
  },
  {
    room: "2th Floor,left,room ",
    pill: {
      color: "#463587",
      label: "Vacant",
    },
    customerName: "No tenant",
    livingSpace: "112 sq m",
  },
  {
    room: "3th Floor,left,room ",
    pill: {
      color: "#474861",
      label: "Request",
    },
    customerName: "No tenant",

    livingSpace: "118 sq m",
  },
  {
    room: "4th Floor,left,room ",
    pill: {
      color: "#f16a2e",
      label: "Maintenance",
    },
    customerName: "Courtney Henry",
    livingSpace: "118 sq m",
  },
];

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
