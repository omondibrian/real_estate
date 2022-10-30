import React from "react";
import {
  HorizontalCard,
  HorizontalCardBody,
  HorizontalCardContent,
  HorizontalCardImage,
  HorizontalCardText,
  HorizontalCardTextContent,
  HorizontalCardTitle,
} from "./styles";

import Image from "next/image";
import info from "../../../public/assets/icons/information.svg";
import people from "../../../public/assets/icons/people.svg";
import home from "../../../public/assets/icons/home.svg";
import point from "../../../public/assets/icons/point.svg";
import { PillTab } from "../pill";

interface CardProps {
  backgroundColor?: string;
  /**
   * How large should the button be?
   */
  orientation?: "horizontal" | "vetical";
 
  /**
   * Optional click handler
   */
  onClick?: () => void;
  /**
   * dictates the state of the  card
   */
  expanded: boolean;
  imageUrl: string;
  propertyTitle: string;
  noRequest: string;
  noTenants: string;
  noProperties:string;
}

/**
 * card component
 */

export const Card = (props: CardProps) => {
  return (
    <HorizontalCard>
      <div
        className={
          !props.expanded
            ? "bg-white shadow-md rounded-lg p-4 "
            : "bg-white shadow-md  rounded-lg pr-2 pl-0 py-0"
        }
      >
        <HorizontalCardBody>
          <HorizontalCardImage>
            {props.expanded ? (
              <img
                src="https://raw.githubusercontent.com/adrianhajdin/projects_realestate/main/assets/images/house.jpg"
                alt="salama properties"
                className=" object-scale-down lg:object-cover h-full rounded-lg rounded-r-none "
              />
            ) : (
              <img
                src="https://raw.githubusercontent.com/adrianhajdin/projects_realestate/main/assets/images/house.jpg"
                alt="salama properties"
                className=" object-scale-down lg:object-cover h-full rounded-lg  "
              />
            )}
          </HorizontalCardImage>
          <HorizontalCardContent>
            <div className="">
              <div className="flex flex-wrap ">
                <HorizontalCardTitle>
                  {props.propertyTitle}
                </HorizontalCardTitle>
              </div>
            </div>
            <p className="mt-2"></p>
            <div className="flex  text-sm text-gray-500">
              {props.expanded && <CardInfo info={"Open on Maps"} Icon={point} />}
            </div>
            <div className="flex pt-2 pb-2  text-sm text-gray-500">
              <CardInfo info={props.noProperties + " properties"} Icon={home} />
              <CardInfo info={props.noTenants + " Tenants"} Icon={people} />
              {props.expanded && <CardInfo info={props.noRequest + " Requests"} Icon={info} />}
            </div>
            <div className="flex pb-2  text-sm text-gray-500">
              {props.expanded && (
                <PillTab
                  backgroundColor="#7480fb"
                  labelText="Show property calender"
                  icon={true}
                />
              )}
            </div>
          </HorizontalCardContent>
        </HorizontalCardBody>
      </div>
    </HorizontalCard>
  );
};

interface CardInfoProps {
  info: string;
  Icon: any;
}
const CardInfo = ({ info, Icon }: CardInfoProps) => {
  return (
    <div className="flex-1 inline-flex items-center">
      <Image src={Icon} layout="intrinsic" />
      <p className="mr-1">{info}</p>
    </div>
  );
};
