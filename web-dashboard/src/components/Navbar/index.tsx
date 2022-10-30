import React from "react";
import Image from "next/image";

export interface NavProps {
  name: string;
  role: string;
  profileImage: string;
}
export default function NavBar(props:NavProps) {
  return (
    <nav className="bg-white px-2 sm:px-4 py-2.5 dark:bg-gray-900 fixed w-full  top-0 left-0 border-b border-gray-200 dark:border-gray-600">
      <div className="container flex flex-wrap flex-row-reverse  items-end  mx-auto">
        <div className="flex ">
          <div className="mr-4">
            <div className="text-sm text-gray-700  font-bold ">
              {props.name}
            </div>
            <div className="text-sm text-gray-400  font-medium ">
            {props.role}
            </div>
          </div>
          <Image
            width={"35px"}
            height="35px"
            src={props.profileImage}
            className="mr-3 h-6 sm:h-9 rounded-full"
            alt="Logo"
          />
        </div>
      </div>
    </nav>
  );
}


