import React,{useContext,} from "react";
import {
  ChevronRightIcon,
  ArrowTrendingDownIcon,
  ArrowTrendingUpIcon,
  HomeIcon,
} from "@heroicons/react/20/solid";
import { ApplicationStateContext } from "../../state/context";

function PropertyTrends() {
  const { state } = useContext(ApplicationStateContext);
  let units:number = 0;
  const occupied = state.analytics.propertTrend.occupiedUnits;
  const vaccant = state.analytics.propertTrend.vaccantUnits;
  const maintenance = state.analytics.propertTrend.maintenance;
  units = occupied.totalUnits + vaccant.totalUnits + maintenance.totalUnits;
  return (
    <div className="p-6   mt-3 rounded-lg border bg-white border-gray-200 shadow-md ">
      <div className="flex flex-row items-center ">
        <div className="font-semibold  mr-2">Properties </div>
        <div className="ml-2 text-sm text-gray-400 items-center  font-medium">
          {units} Total Units
        </div>
        <div className=" ml-auto text-sm text-gray-400 items-center  font-medium">
          All Properties
          <ChevronRightIcon
            className="inline-block"
            height="24px"
            width="24px"
          />
        </div>
      </div>

      <TrendsItem
        trending={occupied.updatedTrend}
        IconBackgroundColor=" bg-green-400"
        TrendColor="text-green-400"
        title="Occupied"
        numberOfUnits="448"
        percentage={`${occupied.percentage} %`}
      >
        <div className="col-start-2 row-start-1 row-end-3 mt-2 ml-auto ">
          <div className="flex justify-end sm:justify-start lg:justify-end xl:justify-start -space-x-1.5">
            {occupied.tenatsProfileImgs.map((u) => (
              <img
                src={u}
                alt="profile"
                className="w-6 h-6 rounded-full bg-slate-100 ring-2 ring-white"
                loading="lazy"
              />
            ))}
          </div>
        </div>
      </TrendsItem>

      <TrendsItem
        trending={vaccant.updatedTrend}
        IconBackgroundColor=" bg-purple-400"
        TrendColor="text-purple-400"
        title="Vacant"
        numberOfUnits="346"
        percentage={`${vaccant.percentage} %`}
      >
        <div className="text-xs font-semibold  text-center pt-2 pb-2 w-20 h-8 rounded-full text-gray-800 bg-gray-200  ">
          Details
        </div>
      </TrendsItem>

      <TrendsItem
        trending={maintenance.updatedTrend}
        IconBackgroundColor=" bg-orange-400"
        TrendColor="text-orange-400"
        title="Maintenance"
        numberOfUnits="52"
        percentage={`${maintenance.percentage} %`}
      >
        <div className="text-xs font-semibold  text-center pt-2 pb-2 w-20 h-8 rounded-full text-gray-800 bg-gray-200  ">
          Details
        </div>
      </TrendsItem>
    </div>
  );
}

export default PropertyTrends;

interface TrendsProps {
  children: any;
  trending: boolean;
  IconBackgroundColor: string;
  TrendColor: string;
  title: string;
  numberOfUnits: string;
  percentage: string;
}

function TrendsItem(props: TrendsProps) {
  return (
    <div className="flex flex-row justify-between ">
      <div className="flex w-[30%]">
        <div
          className={
            "rounded-lg w-10 h-10 text-center text-white mr-3 flex justify-center" +
            props.IconBackgroundColor
          }
        >
          <HomeIcon height="24px" width="24px" className="mt-2" />
        </div>
        <div>
          <div className="text-lg text-gray-700  font-bold ">{props.title}</div>
          <div className="text-sm text-gray-400  font-medium ">
            {props.numberOfUnits} units
          </div>
        </div>
      </div>
      <div className="mt-2 w-20  font-semibold flex">
        {props.trending ? (
          <ArrowTrendingUpIcon
            width="24px"
            height="24px"
            className={"mr-2" + " " + props.TrendColor}
          />
        ) : (
          <ArrowTrendingDownIcon
            width="24px"
            height="24px"
            className={"mr-2" + " " + props.TrendColor}
          />
        )}
        {props.percentage}
      </div>
      <div >{props.children}</div>
    </div>
  );
}


