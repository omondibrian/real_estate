import React from "react";
import Image from "next/image";
export interface ItemProps {
  name: string;
  timestamp: string;
  amount: string;
  profileImage: string;
}
function TranscationItem(props: ItemProps) {
  return (
    <div className="flex flex-row border border-gray-200 shadow-md max-w-sm p-2 ml-2">
      <Image
        width={"35px"}
        height="35px"
        src={props.profileImage}
        className="mr-3 h-6 sm:h-9 rounded-full"
        alt={props.name}
      />
      <div className="ml-3">
        <div className="text-sm text-gray-700  font-bold ">{props.name}</div>
        <div className="text-sm text-gray-400  font-medium ">
          {props.timestamp}
        </div>
      </div>
      <div className="text-sm text-green-400 ml-auto font-medium ">
          {props.amount}
        </div>
    </div>
  );
}

export default TranscationItem;
