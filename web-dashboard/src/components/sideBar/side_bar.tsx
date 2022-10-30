import React from "react";
import Link from 'next/link'
import { NewPropertyIcon } from "../icons/new_property";
import { PropertyIcon } from "../icons/property";
import { DashBoardIcon } from "../icons/dashboard";
import { InboxIcon } from "@heroicons/react/20/solid";
interface SideBarProps {
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
export const SideBar = (props: SideBarProps) => {
  return (
    <div
      className="max-w-2xl sm:max-w-sm   z-20  "
      style={{ boxShadow: "rgba(149, 157, 165, 0.2) 0px 8px 24px" }}
    >
      <aside  aria-label="Sidebar">
        <div className="px-3 py-4 overflow-y-auto rounded h-screen bg-white dark:bg-gray-800">
          <ul className="space-y-2">
            <li>
              <Link href="/dashboard">
              <a
                
                className="flex items-center p-2 text-base font-normal text-gray-900 rounded-lg dark:text-white hover:bg-gray-100 dark:hover:bg-gray-700"
              >
               <DashBoardIcon />
                <span className="ml-3 hidden xl:block">Dashboard</span>
              </a>
              </Link>
            </li>
           
            <li>
            <Link href="/inbox">
              <a
                
                className="flex items-center p-2 text-base font-normal text-gray-900 rounded-lg dark:text-white hover:bg-gray-100 dark:hover:bg-gray-700"
              >
                <InboxIcon />
                <span className="flex-1 ml-3 whitespace-nowrap hidden xl:block">Inbox</span>
                <span className="inline-flex items-center justify-center w-3 h-3 p-3 ml-3 text-sm font-medium text-blue-600 bg-blue-200 rounded-full dark:bg-blue-900 dark:text-blue-200">
                  3
                </span>
              </a>
              </Link>
            </li>
            <li>
            <Link href="/property">
              <a
               
                className="flex items-center p-2 text-base font-normal text-gray-900 rounded-lg dark:text-white hover:bg-gray-100 dark:hover:bg-gray-700"
              >
                <PropertyIcon />
                <span className="flex-1 ml-3 whitespace-nowrap hidden xl:block">Listings</span>
              </a>
              </Link>
            </li>
            <li>
            <Link href="/new_property">
              <a
                
                className="flex items-center p-2 text-base font-normal text-gray-900 rounded-lg dark:text-white hover:bg-gray-100 dark:hover:bg-gray-700"
              >
               <NewPropertyIcon /> 
                <span className="flex-1 ml-3 whitespace-nowrap hidden xl:block">New Property</span>
              </a>
              </Link>
            </li>
            <li>
              <a
                href="#"
                className="flex items-center p-2 text-base font-normal text-gray-900 rounded-lg dark:text-white hover:bg-gray-100 dark:hover:bg-gray-700"
              >
                <svg
                  className="flex-shrink-0 w-6 h-6 text-gray-500 transition duration-75 dark:text-gray-400 group-hover:text-gray-900 dark:group-hover:text-white"
                  fill="currentColor"
                  viewBox="0 0 20 20"
                  xmlns="http://www.w3.org/2000/svg"
                >
                  <path
                    fillRule="evenodd"
                    d="M3 3a1 1 0 00-1 1v12a1 1 0 102 0V4a1 1 0 00-1-1zm10.293 9.293a1 1 0 001.414 1.414l3-3a1 1 0 000-1.414l-3-3a1 1 0 10-1.414 1.414L14.586 9H7a1 1 0 100 2h7.586l-1.293 1.293z"
                    clipRule="evenodd"
                  ></path>
                </svg>
                <span className="flex-1 ml-3 whitespace-nowrap hidden xl:block">Sign In</span>
              </a>
            </li>
            <li>
              <a
                href="#"
                className="flex items-center p-2 text-base font-normal text-gray-900 rounded-lg dark:text-white hover:bg-gray-100 dark:hover:bg-gray-700"
              >
                <svg
                  className="flex-shrink-0 w-6 h-6 text-gray-500 transition duration-75 dark:text-gray-400 group-hover:text-gray-900 dark:group-hover:text-white"
                  fill="currentColor"
                  viewBox="0 0 20 20"
                  xmlns="http://www.w3.org/2000/svg"
                >
                  <path
                    fillRule="evenodd"
                    d="M5 4a3 3 0 00-3 3v6a3 3 0 003 3h10a3 3 0 003-3V7a3 3 0 00-3-3H5zm-1 9v-1h5v2H5a1 1 0 01-1-1zm7 1h4a1 1 0 001-1v-1h-5v2zm0-4h5V8h-5v2zM9 8H4v2h5V8z"
                    clipRule="evenodd"
                  ></path>
                </svg>
                <span className="flex-1 ml-3 whitespace-nowrap hidden xl:block">Sign Up</span>
              </a>
            </li>
          </ul>
        </div>
      </aside>
    </div>
  );
};
