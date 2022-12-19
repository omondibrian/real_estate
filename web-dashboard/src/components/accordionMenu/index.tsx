import React, { useContext } from "react";
import { Disclosure } from "@headlessui/react";
import { ChevronUpIcon } from "@heroicons/react/20/solid";
import { Card } from "../card/card";
import { ItemProps, ListItem } from "../list/list_tab_item";
import { IUnit } from "../../state/entities/PropertyListings";
import { ApplicationStateContext } from "../../state/context";
import { IAppActionTypes } from "../../state/context/appReducer";

type AccordionData = {
  expanded: boolean;
  imageUrl: string;
  noProperties: string;
  noRequest: string;
  noTenants: string;
  propertyTitle: string;
  propertyList: Array<IUnit>;
};
interface AccordionNavProps {
  properties: Array<AccordionData>;
}

export function AccordionNavMenu(props: AccordionNavProps) {
  const data = [...props.properties]; // props may be read only so temp data variable just incase
  const {  dispatch } = useContext(ApplicationStateContext);

  return (
    <div className="w-full h-full overflow-auto  ">
      <div className="mx-auto w-full max-w-md rounded-2xl bg-white p-2">
        <Disclosure>
          {({ open }) => (
            <>
              <Disclosure.Button className="flex w-full justify-between rounded-lg bg-white  py-2 text-left text-sm font-medium  hover:bg-purple-200 focus:outline-none focus-visible:ring focus-visible:ring-purple-500 focus-visible:ring-opacity-75">
                <Card {...data[0]!} />
                <ChevronUpIcon
                  className={`${
                    open ? "rotate-180 transform" : ""
                  } h-10 w-10 text-purple-500 `}
                />
              </Disclosure.Button>
              <Disclosure.Panel className="px-4 pt-4 pb-2 text-sm text-gray-500">
                <ListItem
                  propertyList={data[0]!.propertyList.map((u): ItemProps => {
                    return {
                      customerName: u.info.tenantInfo.name,
                      livingSpace: u.info.livingSpace,
                      pill: u.pill,
                      room: u.info.roomName,
                      onClick: () => {
                        dispatch({
                          type: IAppActionTypes.UPDATE_UNIT,
                          payload: u,
                        });
                      },
                    };
                  })}
                />
              </Disclosure.Panel>
            </>
          )}
        </Disclosure>
        {data.length > 1 &&
          data.slice(1).map((p, i) => {
            p.expanded = false;
            return (
              <Disclosure as="div" className="mt-2">
                {({ open }) => (
                  <>
                    <Disclosure.Button className="flex w-full justify-between rounded-lg bg-white  py-2 text-left text-sm font-medium  hover:bg-purple-200 focus:outline-none focus-visible:ring focus-visible:ring-purple-500 focus-visible:ring-opacity-75">
                      <Card key={i} {...p} />
                      <ChevronUpIcon
                        className={`${
                          open ? "rotate-180 transform" : ""
                        } h-10 w-10 text-purple-500 `}
                      />
                    </Disclosure.Button>
                    <Disclosure.Panel className="px-4 pt-4 pb-2 text-sm text-gray-500">
                      <ListItem
                        propertyList={p.propertyList.map((u): ItemProps => {
                          return {
                            customerName: u.info.tenantInfo.name,
                            livingSpace: u.info.livingSpace,
                            pill: u.pill,
                            room: u.info.roomName,
                            onClick: () => {
                              dispatch({
                                type: IAppActionTypes.UPDATE_UNIT,
                                payload: u,
                              });
                            },
                          };
                        })}
                      />
                    </Disclosure.Panel>
                  </>
                )}
              </Disclosure>
            );
          })}
      </div>
    </div>
  );
}
