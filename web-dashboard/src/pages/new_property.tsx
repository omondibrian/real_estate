import { NextPage } from "next";
import Head from "next/head";
import React, { useContext } from "react";
import MainLayout from "../Layouts/Main";
import Button from "../components/Button";
import { PlusIcon } from "@heroicons/react/20/solid";
import { ApplicationStateContext } from "../state/context";
import { IAppActionTypes } from "../state/context/appReducer";
import { Card } from "../components/card/card";
import { ItemProps, ListItem } from "../components/list/list_tab_item";

const NewProperty: NextPage = () => {
  const { state, dispatch } = useContext(ApplicationStateContext);

  return (
    <MainLayout>
      <Head>
        <title>New Property</title>
        <link rel="icon" href="/favicon.ico" />
      </Head>
      <div className="flex flex-row ">
        <div className="flex flex-col h-screen w-[40%] z-10 bg-white px-3">
          <div className="flex justify-between  items-center font-bold  text-start mt-3  text-lg z-20 mb-10">
            <span> Existing Properties </span>
            <Button
              onClick={() => {
                dispatch({
                  type: IAppActionTypes.OPEN_MODAL,
                  payload: {
                    view: "new_property",
                    data: {},
                  },
                });
              }}
            >
              <PlusIcon className="w-5 mr-2 h-5 text-white" /> New
            </Button>
          </div>
          <div className="w-full h-full overflow-auto">
            {state.properties.map((p, i) => (
              <div key={i} onClick={()=>{
                dispatch({
                  type: IAppActionTypes.CURRENT_PROPERTY_INDEX,
                  payload: {
                    index: i
                  },
                });
              }}>
                <Card {...p}  />
              </div>
            ))}
          </div>
        </div>

        <div className="flex flex-col h-screen w-[60%] z-10 mt-16  px-3">
          <div className="flex justify-between  items-center font-bold  text-start mt-3  text-lg z-20 mb-10">
            <span> Current Units </span>
            <Button
              onClick={() => {
                dispatch({
                  type: IAppActionTypes.OPEN_MODAL,
                  payload: {
                    view: "new_unit",
                    data: {},
                  },
                });
              }}
            >
              <PlusIcon className="w-5 mr-2 h-5 text-white" /> New unit
            </Button>
          </div>
          <div className=" flex flex-col w-full h-full overflow-auto bg-white">
            <ListItem
              propertyList={state.properties[state.currentSelectedPropertyIndex].propertyList.map(
                (u): ItemProps => {
                  return {
                    customerName: u.info.tenantInfo.name,
                    livingSpace: u.info.livingSpace,
                    pill: u.pill,
                    room: u.info.roomName,
                    onClick: () => {
                      console.log("unit clicked");
                    },
                  };
                }
              )}
            />
          </div>
        </div>
      </div>
    </MainLayout>
  );
};

export default NewProperty;
