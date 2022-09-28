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
   * Button contents
   */
  label: string;
  /**
   * Optional click handler
   */
  onClick?: () => void;
  /**
   * dictates the state of the  card
   */
  expanded: boolean;
}

/**
 * card component
 */

export const Card = ({ label, expanded }: CardProps) => {
  return (
    <HorizontalCard>
      <div
        className={
          !expanded
            ? "bg-white shadow-md  rounded-3xl p-4 "
            : "bg-white shadow-md  rounded-3xl pr-2 pl-0 py-0"
        }
      >
        <HorizontalCardBody>
          <HorizontalCardImage>
            {expanded ? (
              <Image
                src="https://raw.githubusercontent.com/adrianhajdin/projects_realestate/main/assets/images/house.jpg"
                alt="salama properties"
                className=" object-scale-down lg:object-cover  lg:h-48 rounded-2xl rounded-r-none "
                width={"350px"}
                height={"350px"}
              />
            ) : (
              <Image
                src="https://raw.githubusercontent.com/adrianhajdin/projects_realestate/main/assets/images/house.jpg"
                alt="salama properties"
                className=" object-scale-down lg:object-cover lg:h-48 rounded-2xl  "
                width={"75px"}
                height={"75px"}
              />
            )}
          </HorizontalCardImage>
          <HorizontalCardContent>
            <div className="w-16 md:w-32 lg:w-96">
              <div className="flex flex-wrap ">
                <HorizontalCardTitle>
                  Salama Properties ThornBridge Cir,Syrance,conecticut 3564
                </HorizontalCardTitle>
              </div>
            </div>
            <p className="mt-2"></p>
            <div className="flex  text-sm text-gray-500">
              {expanded && <CardInfo info={"Open on Maps"} Icon={point} />}
            </div>
            <div className="flex pt-2 pb-2  text-sm text-gray-500">
              <CardInfo info={"32 properties"} Icon={home} />
              <CardInfo info={"10 Tenants"} Icon={people} />
              {expanded && <CardInfo info={"8 Requests"} Icon={info} />}
            </div>
            <div className="flex pb-2  text-sm text-gray-500">
              {expanded && (
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
