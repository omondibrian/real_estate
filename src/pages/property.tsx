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
      <div className="flex flex-col h-screen  z-10 bg-white px-3">
        <div className="font-bold  text-start mt-3 text-lg z-20 mb-10">My Properties</div>
        <SearchBar label="query" />
        <div className=" flex justify-between  text-center mt-6">
          <div className="text-sm text-gray-400  font-medium ">
            3 Property Places
          </div>
          <PropertyFilter label="filt" options="vaccant" />
        </div>
        <AccordionNavMenu properties={data.properties}/>
      </div>
    </MainLayout>
  );
};

export default Property;


const data = {
  properties: [
    {
      expanded: false,
      imageUrl:
        "https://raw.githubusercontent.com/adrianhajdin/projects_realestate/main/assets/images/house.jpg",
      noProperties: "32",
      noRequest: "8",
      noTenants: "10",
      propertyTitle:
        "Salama Properties ThornBridge Cir,Syrance,conecticut 3564",
      propertyList: [
        {
          room: "1th Floor,left,room ",
          pill: {
            color: "#59b73d",
            label: "Occupied",
          },
          customerName: "John Doe",
          livingSpace: "112 sq m",
        },
        {
          room: "2th Floor,left,room ",
          pill: {
            color: "#463587",
            label: "Vacant",
          },
          customerName: "No tenant",
          livingSpace: "112 sq m",
        },
        {
          room: "3th Floor,left,room ",
          pill: {
            color: "#474861",
            label: "Request",
          },
          customerName: "No tenant",

          livingSpace: "118 sq m",
        },
        {
          room: "4th Floor,left,room ",
          pill: {
            color: "#f16a2e",
            label: "Maintenance",
          },
          customerName: "Courtney Henry",
          livingSpace: "118 sq m",
        },
      ],
    },
    {
      expanded: false,
      imageUrl:
        "https://raw.githubusercontent.com/adrianhajdin/projects_realestate/main/assets/images/house.jpg",
      noProperties: "32",
      noRequest: "8",
      noTenants: "10",
      propertyTitle:
        "Salama Properties ThornBridge Cir,Syrance,conecticut 3564",
      propertyList: [
        {
          room: "1th Floor,left,room ",
          pill: {
            color: "#59b73d",
            label: "Occupied",
          },
          customerName: "Janie william",
          livingSpace: "112 sq m",
        },
        {
          room: "2th Floor,left,room ",
          pill: {
            color: "#463587",
            label: "Vacant",
          },
          customerName: "No tenant",
          livingSpace: "112 sq m",
        },
        {
          room: "3th Floor,left,room ",
          pill: {
            color: "#474861",
            label: "Request",
          },
          customerName: "No tenant",

          livingSpace: "118 sq m",
        },
        {
          room: "4th Floor,left,room ",
          pill: {
            color: "#f16a2e",
            label: "Maintenance",
          },
          customerName: "Courtney Henry",
          livingSpace: "118 sq m",
        },
      ],
    },
  ],
};