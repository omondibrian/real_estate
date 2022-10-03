import React from "react";
import Image from "next/image";
interface TenantProps {
  /**
   * Optional click handler
   */
  onClick?: () => void;
}
/**
 * display current tenant information
 */
export const TenantInfo = (props: TenantProps) => {
  // classNameName="flex items-center justify-center flex-col bg-gray-700 p-4 rounded-lg w-48 space-y-4"
  return (
    <div className="bg-slate-800 text-white rounded-lg  w-[20rem]  h-[20rem] space-y-6 p-10 ">
      <div className="flex space-x-4 items-center ">
        <div className="w-12 h-12">
          <Image
            height={"60px"}
            width={"60px"}
            alt="avatar"
            src="https://images.unsplash.com/photo-1518791841217-8f162f1e1131?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60"
            className="rounded-full w-full h-full object-cover "
          />
          <div></div>
        </div>
        <div className="space-y-2">
          <div className="flex space-x-2 items-center">
            <h2 className="text-base font-bold"> Janie william </h2>
            <svg
              className="h-4 w-4 text-blue-500"
              fill="none"
              viewBox="0 0 24 24"
              stroke="currentColor"
              stroke-width="2"
            >
              <path
                stroke-linecap="round"
                stroke-linejoin="round"
                d="M9 12l2 2 4-4m6 2a9 9 0 11-18 0 9 9 0 0118 0z"
              />
            </svg>
            <div className="  text-xs text-slate-400">Active</div>
          </div>
          <p className=" text-xs text-slate-400">Tenant</p>
        </div>
      </div>

      <div className=" flex justify-between text-center">
        <div className=" text-base text-gray-400 font-normal ">
          Placement Date
        </div>
        <div className=" text-base text-gray-400 font-normal">
          6 August 2022
        </div>
      </div>
      <div className="flex justify-between text-center">
        <div className=" text-base text-gray-400 font-normal ">Contact</div>
        <div className=" text-base text-gray-400 font-normal">
          (254) 555-101
        </div>
      </div>

      <div className="flex justify-between text-center">
        <div className=" text-base text-gray-400 font-normal ">Price/month</div>
        <div className=" text-base text-white  font-bold"> $291.23</div>
      </div>

      <div className="flex justify-center pt-1">
        <button
          type="submit"
          className="w-full flex justify-center bg-indigo-600  hover:bg-purple-200 text-gray-100 p-3  rounded-lg tracking-wide font-semibold  cursor-pointer transition ease-in duration-500"
        >
          <svg
            xmlns="http://www.w3.org/2000/svg"
            fill="none"
            viewBox="0 0 24 24"
            strokeWidth={1.5}
            stroke="currentColor"
            className="w-6 h-6 mr-2"
          >
            <path
              strokeLinecap="round"
              strokeLinejoin="round"
              d="M6 12L3.269 3.126A59.768 59.768 0 0121.485 12 59.77 59.77 0 013.27 20.876L5.999 12zm0 0h7.5"
            />
          </svg>
          Send messages
        </button>
      </div>
    </div>
  );
};
