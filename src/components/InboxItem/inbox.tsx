import React from "react";
import DocType from "../document/document_list";

export interface ItemProps {
  name: string;
  timestamp: string;
  profileImage: string;
  taskName: string;
  taskLabel: string;
  propertyName: string;
  roomName: string;
  style: string;
  setId:()=>void
}

function InboxItem(props: ItemProps) {
  return (
    <div className="flex flex-row border border-gray-200 shadow-md bg-white mt-2  p-1 ml-1" onClick={props.setId}>
      <img
        src={props.profileImage}
        className="mr-2  mt-2 w-12 h-10 rounded-full z-10"
        alt={props.name}
      />
      <div className="flex-1">
        <div className="flex flex-row  justify-between w-full">
          <div className="text-sm text-gray-400  pr-2 font-medium ">
            {props.name}
          </div>
          <div className="text-sm text-gray-400  ml-auto pr-2 font-medium ">
            {props.timestamp}
          </div>
        </div>
        <div className="flex flex-row text-sm text-gray-400  font-medium ">
          <span className="text-gray-800 font-bold mr-1">{props.taskName}</span>
        </div>
        <div className="text-sm text-gray-400  ml-auto pr-2 font-medium ">
          {props.propertyName + " , " + props.roomName}
        </div>
        <div className="flex flex-row mt-2 mb-2  ">
          <DocType type={props.taskLabel} styles={props.style} />
        </div>
      </div>
    </div>
  );
}

export default InboxItem;


