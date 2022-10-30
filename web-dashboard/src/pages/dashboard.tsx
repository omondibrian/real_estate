import React, { useContext } from "react";
import type { NextPage } from "next";
import Head from "next/head";
import MainLayout from "../Layouts/Main";
import Chart from "../components/chart/Chart";
import PropertyTrends from "../components/propertyTrends/PropertyTrends";
import RequestItem from "../components/RequestItem/RequestItem";
import TranscationItem from "../components/TranscationItem/TranscationItem";
import { ApplicationStateContext } from "../state/context";
import { IAppActionTypes } from "../state/context/appReducer";

const DashBoard: NextPage = () => {
  const { state, dispatch } = useContext(ApplicationStateContext);
  React.useEffect(() => {
    dispatch({
      type: IAppActionTypes.FETCH_STATS,
      payload: ""
    });
  }, []);
  return (
    <MainLayout>
      <Head>
        <title>DashBoard</title>
        <link rel="icon" href="/favicon.ico" />
      </Head>
      <div className="flex flex-row h-screen gap-8 justify-between pl-4">
        <div className="flex flex-col ">
          <div className="font-semibold text-start mt-3 ml-3 text-lg z-20 ">
            DashBoard
          </div>

          <div className="mb-1 mt-8">
            <span className="font-normal  text-lg mr-1">Welcome</span>
            <span className="font-bold text-start mt-3 text-lg">{state.user?.name.split(" ")[0]}!</span>
          </div>
          <p className="text-gray-400 text-sm mb-2">
            Hi {state.user?.name.split(" ")[0]}, don't forget to control every activity that exists
          </p>

          <div className="overflow-y-auto h-full">
            <Chart />
            <PropertyTrends />
          </div>
        </div>
        <div className="flex flex-col flex-1  bg-white mt-32 pr-4  overflow-y-auto ">
          <div className="flex justify-between  mt-4">
            <span className="font-semibold ml-2">Recent Activities</span>
            <span className="text-gray-400 text-sm ">See More</span>
          </div>
          {state.requests.map((r, i) => (
            <RequestItem {...r} key={i} />
          ))}

          <div className="flex justify-between  mt-4">
            <span className="font-semibold ml-2">Recent Activities</span>
            <span className="text-gray-400 text-sm ">See More</span>
          </div>
          {state.transcations.map((t, i) => (
            <TranscationItem {...t} key={i} />  
          ))}
        </div>
      </div>
    </MainLayout>
  );
};

export default DashBoard;

