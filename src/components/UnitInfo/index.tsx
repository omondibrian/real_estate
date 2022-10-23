import React from "react";
import { PencilIcon, HomeIcon } from "@heroicons/react/20/solid";
import selection from "../../../public/assets/icons/selection.png";
import Image from "next/image";
import { PropertyEquipment } from "../property/property_overview";
import { TenantInfo } from "../tenant/tenant_info";
import { Document } from "../document/document_list";

interface UnitInfoProps {
  roomName: string;
  livingSpace: string;
  noRooms: string;
  equipments: Array<string>;
  propertyOverview: Array<string>;
  tenantInfo: ITenantInfo;
  documents:{
    contractUrl:string,
    receiptsUrl:string
  }
}
function UnitInfo(props: UnitInfoProps) {
  return (
    <div className=" flex p-6 mt-2 w-full bg-white rounded-lg border border-gray-200 shadow-md">
      <div className="flex-col ">
        <div className="flex  justify-start justify-items-center ">
          <h5 className="mb-2 text-2xl font-semibold tracking-tight text-gray-900 dark:text-white">
            {props.roomName}
          </h5>
          <Icon styles="rounded-full">
            <PencilIcon style={{ height: "20px", margin: "0px" }} />
          </Icon>
        </div>

        <hr className="my-3" />

        <div className="flex justify-start">
          <div className="flex">
            <Icon styles="rounded-lg">
              <HomeIcon style={{ height: "20px", margin: "0px" }} />
            </Icon>
            <div className="ml-2">
              <div className="text-sm text-gray-700  font-bold ">
                {props.livingSpace}
              </div>
              <div className="text-sm text-gray-400  font-medium ">
                Living Space
              </div>
            </div>
          </div>
          <div className="flex">
            <Icon styles="rounded-lg">
              <Image src={selection} width="20px" height="20px" />
            </Icon>
            <div className="ml-2">
              <div className="text-sm text-gray-700  font-bold ">
                {props.noRooms}
              </div>
              <div className="text-sm text-gray-400  font-medium ">Rooms</div>
            </div>
          </div>
        </div>

        <hr className="my-3" />
        <div className="font-semibold">Equipment </div>
        <PropertyEquipment equipment={props.equipments} />
        <hr className="my-3" />

        <div className=" font-semibold ">Property Overview</div>
        <div className="flex flex-wrap gap-2">
          {props.propertyOverview.map((u, i) => (
            <img
              key={i}
              src={u}
              alt="salama properties"
              className=" object-scale-down lg:object-cover  rounded-2xl  w-14 h-14 "
            />
          ))}
        </div>
      </div>
      <div className="flex-col w-[60%]">
        <TenantInfo {...props.tenantInfo} />
        <div className=" w-[20rem] pt-6 ">
          <Document {...props.documents}/>
        </div>
      </div>
    </div>
  );
}

export default UnitInfo;

interface IconProps {
  styles?: string;
  children: any;
}
function Icon(props: IconProps) {
  return (
    <div
      className={
        "inline-block  px-2 py-2 ml-3 bg-gray-100 text-gray-600 " + props.styles
      }
    >
      {props.children}
    </div>
  );
}

export interface ITenantInfo extends Tenant {
  onClick: () => void;
}

export interface Tenant {
  name: string;
  contact: string;
  placementDate: string;
  pricePerMonth: string;
  profileUrl: string;
  status: "Active" | "InActive";
}
