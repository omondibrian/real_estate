import React, { Fragment } from "react";
import { Menu, Transition } from "@headlessui/react";
import { ChevronDownIcon } from "@heroicons/react/20/solid";
interface FilterProps {
  /**
   * filter option
   */
  label: string;
  /**
   * options to be passesd in a filter block
   */
  options: "vaccant" | "occupied" | "maintenance" | "requested";
  /**
   * Optional click handler
   */
  onClick?: () => void;
}
function classNames(...classes: any) {
  return classes.filter(Boolean).join(" ");
}

/**
 * shows filters for the proprty search
 */
export const PropertyFilter = (props: FilterProps) => {
  return (
    <Menu as="div" className="relative inline-block text-left ">
      <div>
        <Menu.Button className="inline-flex w-full justify-center rounded-md border border-gray-300 bg-white px-4 py-2 text-sm font-medium text-gray-700 shadow-sm hover:bg-gray-50 focus:outline-none focus:ring-2 focus:ring-indigo-500 focus:ring-offset-2 focus:ring-offset-gray-100">
          All Properties
          <ChevronDownIcon className="-mr-1 ml-2 h-5 w-5" aria-hidden="true" />
        </Menu.Button>
      </div>

      <Transition
        as={Fragment}
        enter="transition ease-out duration-100"
        enterFrom="transform opacity-0 scale-95"
        enterTo="transform opacity-100 scale-100"
        leave="transition ease-in duration-75"
        leaveFrom="transform opacity-100 scale-100"
        leaveTo="transform opacity-0 scale-95"
      >
        <Menu.Items className="absolute right-0 z-10 mt-2 w-56 origin-top-right rounded-md bg-white shadow-lg ring-1 ring-black ring-opacity-5 focus:outline-none">
          <div className="py-1">
            <Menu.Item>
              {({ active }) => (
                <a
                  href="#"
                  className={classNames(
                    active ? "bg-gray-100 text-gray-900" : "text-gray-700",
                    "flex items-center px-4 py-2 text-sm font-bold"
                  )}
                >
                  <div
                    style={{ width: "0.4rem", height: "0.4rem" }}
                    className="bg-gray-500 rounded-full mr-2"
                  ></div>
                  All Properties
                </a>
              )}
            </Menu.Item>
            <Menu.Item>
              {({ active }) => (
                <a
                  href="#"
                  className={classNames(
                    active ? "bg-gray-100 text-gray-900" : "text-gray-700",
                    "flex items-center px-4 py-2 text-sm font-bold mr-2"
                  )}
                >
                  <div
                    style={{ width: "0.4rem", height: "0.4rem" }}
                    className="bg-green-500 rounded-full mr-2"
                  ></div>
                  Occupied
                </a>
              )}
            </Menu.Item>
            <Menu.Item>
              {({ active }) => (
                <a
                  href="#"
                  className={classNames(
                    active ? "bg-gray-100 text-gray-900" : "text-gray-700",
                    "flex items-center px-4 py-2 text-sm font-bold"
                  )}
                >
                  <div
                    style={{ width: "0.4rem", height: "0.4rem" }}
                    className="bg-purple-500 rounded-full mr-2"
                  ></div>
                  vacant
                </a>
              )}
            </Menu.Item>
            <Menu.Item>
              {({ active }) => (
                <a
                  href="#"
                  className={classNames(
                    active ? "bg-gray-100 text-gray-900" : "text-gray-700",
                    " flex items-center px-4 py-2 text-sm font-bold"
                  )}
                >
                  <div
                    style={{ width: "0.4rem", height: "0.4rem" }}
                    className="bg-orange-500 rounded-full "
                  ></div>
                  <div className="pl-2">Maintenance</div>
                </a>
              )}
            </Menu.Item>
            <Menu.Item>
              {({ active }) => (
                <button
                  type="submit"
                  className={classNames(
                    active ? "bg-gray-100 text-gray-900" : "text-gray-700",
                    "flex items-center w-full px-4 py-2 text-left text-sm font-bold"
                  )}
                >
                  <div
                    style={{ width: "0.4rem", height: "0.4rem" }}
                    className="bg-gray-500 rounded-full mr-2"
                  ></div>
                  Request
                </button>
              )}
            </Menu.Item>
          </div>
        </Menu.Items>
      </Transition>
    </Menu>
  );
};
