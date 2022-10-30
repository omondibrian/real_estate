import React from "react";
import { OccupiedBadge } from "../pill/styles";
import {
  CheckBadgeIcon,
  EllipsisHorizontalIcon,
  FlagIcon,
} from "@heroicons/react/20/solid";
import DocType from "../document/document_list";
import { LineWrapper } from "./styles";
export interface ItemProps {
  name: string;
  timestamp: string;
  amount: string;
  profileImage: string;
  statusLable: string;
  taskId: string;
  taskName: string;
  taskLabel: string;
  state: boolean;
  color?: string;
}
function RequestItem(props: ItemProps) {
  return (
    <LineWrapper>
      <div className="flex flex-row border border-gray-200 shadow-md bg-white  p-1 ml-1">
        <img
          src={props.profileImage}
          className="mr-2  mt-2 w-12 h-10 rounded-full z-10"
          alt={props.name}
        />
        <div className="flex-1">
          <TaskStatus color={props.color || "bg-green-400"}>
            {props.state ? (
              <CheckBadgeIcon height={"20px"} width="20px" className="mr-2" />
            ) : (
              <FlagIcon height={"20px"} width="20px" className="mr-2" />
            )}
            {props.statusLable}
          </TaskStatus>
          <div className="text-sm text-gray-400  ml-auto pr-2 font-medium ">
            {props.timestamp}
          </div>
          <div className="flex flex-row     text-sm text-gray-400  font-medium ">
            <span className="text-gray-800 font-semibold mr-1">
              {props.name}
            </span>
            {props.state ? "completed task" : "create new task No"}
            <span className="text-gray-800 font-semibold ml-1">
              #{props.taskId}
            </span>
          </div>
          <div className="border border-gray-200 h-20 p-2 mr-2 w-full">
            <div className="flex flex-row ">
              <div className="text-gray-800 font-semibold mr-1 mb-2 flex-1">
                {props.taskName}
                <span className="text-sm text-gray-400  ml-auto font-medium ">
                  #{props.taskId}
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
                type={props.taskLabel}
                styles={
                  props.state
                    ? "text-green-800 bg-green-100"
                    : "text-orange-800 bg-orange-100"
                }
              />
            </div>
          </div>
        </div>
      </div>
    </LineWrapper>
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
          "flex items-center justify-center  rounded-full w-32 h-8 text-center  font-semibold text-white pt-1 sm:mr-1 md:mr-3 " +
          props.color
        }
      >
        {props.children}
      </div>
    </OccupiedBadge>
  );
}
