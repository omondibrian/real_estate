import type { NextPage } from "next";
import Head from "next/head";
import React, { useContext } from "react";
import { AccordionNavMenu } from "../components/accordionMenu";
import { Card } from "../components/card/card";
import { PropertyFilter } from "../components/filter/filter_tab";
import { SearchBar } from "../components/search/search_bar";
import UnitInfo from "../components/UnitInfo";
import MainLayout from "../Layouts/Main";
import { ApplicationStateContext } from "../state/context";
import { IAppActionTypes } from "../state/context/appReducer";
import { PropertyListings } from "../state/entities/PropertyListings";
import { AppManager } from "../state/service";

const Property: NextPage = () => {
  const { state, dispatch } = useContext(ApplicationStateContext);

  //on mount fetch property listings
  //TODO: change user id to dynamic type
  React.useEffect(() => {
    fetchListings();

    async function fetchListings() {
      const appManager = new AppManager();
      const listings = await appManager.getPropertyListings();
      if (listings?.msg) {
        //set errors
        console.log(listings.msg);
      }
      if (listings?.propertyListings && listings.propertyListings.length > 0) {
        dispatch({
          type: IAppActionTypes.FETCH_lISTINGS,
          payload: listings.propertyListings,
        });
      }
    }
  }, []);
  return (
    <MainLayout>
      <Head>
        <title>{state.loading ? "loading" : "Listings"}</title>
        <link rel="icon" href="/favicon.ico" />
      </Head>
      {!state.loading ? (
        <div className="flex flex-row gap-1">
          <div className="flex flex-col h-screen w-[40%] z-10 bg-white px-3">
            <div className="font-bold  text-start mt-3 text-lg z-20 mb-10">
              My Properties
            </div>
            <SearchBar label="query" />
            <div className=" flex justify-between  text-center mt-6">
              <div className="text-sm text-gray-400  font-medium ">
                {state.properties.length} Property Places
              </div>
              <PropertyFilter label="filt" options="vaccant" />
            </div>
            <AccordionNavMenu properties={state.properties} />
          </div>
          <div className="flex flex-col h-screen overflow-y-auto z-10  ml-2 mt-16 pb-16 w-[60%]">
            <Card {...state.unit} />
            <UnitInfo {...state.unit.info}  />
          </div>
        </div>
      ) : (
        <div className="flex my-40  items-center justify-center text-blue-500">
          loading...
        </div>
      )}
    </MainLayout>
  );
};

export default Property;
