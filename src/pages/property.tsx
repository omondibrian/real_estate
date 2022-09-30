import type { NextPage } from "next";
import Head from "next/head";
import React from "react";
import { AccordionNavMenu } from "../components/accordionMenu";
import { PropertyFilter } from "../components/filter/filter_tab";
import { SearchBar } from "../components/search/search_bar";
import MainLayout from "../Layouts/Main";
import useDashboardState from "../state/dashboardState";

const Property: NextPage = () => {
  // const [state, send] = useDashboardState();
  // React.useEffect(()=>{
  //   // send('authorized')
  // })
  // console.log(state);
  return (
    <MainLayout>
      <Head>
        <title>Listings</title>
        <link rel="icon" href="/favicon.ico" />
      </Head>
      <div className="flex-col h-screen  z-10 bg-white px-3">
        <div className="font-bold  text-start mt-3 text-lg z-20 mb-10">My Properties</div>
        <SearchBar label="query" />
        <div className=" flex justify-between  text-center mt-6">
          <div className="text-sm text-gray-400  font-medium ">
            3 Property Places
          </div>
          <PropertyFilter label="filt" options="vaccant" />
        </div>
        <AccordionNavMenu />
      </div>
    </MainLayout>
  );
};

export default Property;
