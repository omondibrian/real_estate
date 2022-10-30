import { NextPage } from "next";
import Head from "next/head";
import React, { useContext } from "react";
import MainLayout from "../Layouts/Main";
import Button from "../components/Button";
import { PlusIcon } from "@heroicons/react/20/solid";
import { ApplicationStateContext } from "../state/context";
import { IAppActionTypes } from "../state/context/appReducer";
import { Card } from "../components/card/card";

const NewProperty: NextPage = () => {
  const { state, dispatch } = useContext(ApplicationStateContext);

  //on mount fetch property listings
  //TODO: change user id to dynamic type
  React.useEffect(() => {
    dispatch({
      type: IAppActionTypes.FETCH_lISTINGS,
      payload: {
        userId: "1",
      },
    });
  }, []);

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
            <Button onClick={() => {}}>
              <PlusIcon className="w-5 mr-2 h-5 text-white" /> New
            </Button>
          </div>
          <div className="w-full h-full overflow-auto">
            {state.properties.map((p, i) => (
              <Card {...p} key={i} />
            ))}
          </div>
        </div>
      </div>
    </MainLayout>
  );
};

export default NewProperty;
