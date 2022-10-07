import React from "react";
import {
  ChevronRightIcon,
  ArrowTrendingDownIcon,
  ArrowTrendingUpIcon,
  HomeIcon,
} from "@heroicons/react/20/solid";

function PropertyTrends() {
  return (
    <div className="p-6 max-w-2xl  rounded-lg border border-gray-200 shadow-md dark:bg-gray-800 dark:border-gray-700">
      <div className="flex flex-row  ">
        <div className="font-semibold  mr-2">Properties </div>
        <div className="ml-2 text-sm text-gray-400 items-center  font-medium">
          846 Total Units
        </div>
        <div className=" ml-auto text-sm text-gray-400 items-center  font-medium">
          All Properties <ChevronRightIcon height="24px" width="24px" />
        </div>
      </div>
      <div className="flex flex-row">
        <TrendsItem
          trending={true}
          IconBackgroundColor=" bg-green-400"
          TrendColor="text-green-400"
          title="Occupied"
          numberOfUnits="448"
          percentage="53 %"
        >
          <div className="col-start-2 row-start-1 row-end-3 mt-2 ml-auto ">
            <div className="flex justify-end sm:justify-start lg:justify-end xl:justify-start -space-x-1.5">
              {profileImg.map((u) => (
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
      </div>
      <div className="flex flex-row">
        <TrendsItem
          trending={true}
          IconBackgroundColor=" bg-purple-400"
          TrendColor="text-purple-400"
          title="Vacant"
          numberOfUnits="346"
          percentage="43 %"
        >
          <div className="text-xs font-semibold  text-center pt-2 pb-2 w-20 h-8 rounded-full text-gray-800 bg-gray-200  ">
            Details
          </div>
        </TrendsItem>
      </div>
      <div className="flex flex-row">
        <TrendsItem
          trending={true}
          IconBackgroundColor=" bg-orange-400"
          TrendColor="text-orange-400"
          title="Maintenance"
          numberOfUnits="52"
          percentage="6 %"
        >
          <div className="text-xs font-semibold  text-center pt-2 pb-2 w-20 h-8 rounded-full text-gray-800 bg-gray-200  ">
            Details
          </div>
        </TrendsItem>
      </div>
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
    <div className="flex items-end  mr-0">
      <div className="flex mt-3 ">
        <div className="flex flex-row gap-2">
          <div
            className={
              "rounded-lg w-10 h-10 text-center text-white mr-3" +
              props.IconBackgroundColor
            }
          >
            <HomeIcon height="24px" width="24px" className="mt-2" />
          </div>
          <div>
            <div className="text-lg text-gray-700  font-bold ">
              {props.title}
            </div>
            <div className="text-sm text-gray-400  font-medium ">
              {props.numberOfUnits} units
            </div>
          </div>
          <div className="mt-2 mx-auto md:mr-14 md:ml-12 font-semibold">
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

          {props.children}
        </div>
      </div>
    </div>
  );
}

const profileImg = [
  "https://images.unsplash.com/photo-1518791841217-8f162f1e1131?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60",
  "https://images.unsplash.com/photo-1518791841217-8f162f1e1131?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60",
  "https://images.unsplash.com/photo-1518791841217-8f162f1e1131?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60",
  "https://images.unsplash.com/photo-1518791841217-8f162f1e1131?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60",
  "https://images.unsplash.com/photo-1518791841217-8f162f1e1131?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60",
];
