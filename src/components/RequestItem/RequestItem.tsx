import React from "react";
import Image from "next/image";
import { OccupiedBadge } from "../pill/styles";
import {
  CheckBadgeIcon,
  EllipsisHorizontalIcon,
} from "@heroicons/react/20/solid";
import DocType from "../document/document_list";
export interface ItemProps {
  name: string;
  timestamp: string;
  amount: string;
  profileImage: string;
}
function RequestItem(props: ItemProps) {
  return (
    <div className="border border-gray-200 shadow-md  max-w-[337px] p-1 ml-1">
      <div className="flex flex-row ">
        <img
          src={props.profileImage}
          className="mr-2  mt-2 w-12 h-10 rounded-full"
          alt={props.name}
        />
        <div className="ml-2">
          <TaskStatus color="bg-green-400">
            <CheckBadgeIcon height={"20px"} width="20px" />
            Task completed
          </TaskStatus>
        </div>

        <div className="text-sm text-gray-400  ml-auto pr-2 font-medium ">
          {props.timestamp}
        </div>
      </div>
      <div className="flex flex-row justify-end mr-3    text-sm text-gray-400  font-medium ">
        <span className="text-gray-800 font-semibold mr-1">{props.name}</span>
        completed task
        <span className="text-gray-800 font-semibold ml-1">#125</span>
      </div>
      <div className="border border-gray-200 h-20 p-2 mr-2 ml-auto my-3 lg:ml-16">
        <div className="flex flex-row " >
          <div className="text-gray-800 font-semibold mr-1 mb-2 ">
            Office Equipment
            <span className="text-sm text-gray-400  ml-auto font-medium ">
              #125
            </span>
          </div>
          <EllipsisHorizontalIcon
            height={"20px"}
            width="20px"
            className="ml-auto mb-4"
          />
        </div>
        <div className="flex flex-row ">
          <DocType
            type="Office Equipment"
            styles="text-green-800 bg-green-100"
          />
        </div>
      </div>
    </div>
  );
}

export default RequestItem;

interface IStatus {
  color: string;
  children: any;
}
function TaskStatus(props: IStatus) {
  return (
    <OccupiedBadge backgroundColor={props.color}>
      <div
        className={
          "rounded-full w-32 h-8 text-center  font-semibold text-white pt-1 sm:mr-1 md:mr-3 " +
          props.color
        }
      >
        {props.children}
      </div>
    </OccupiedBadge>
  );
}
