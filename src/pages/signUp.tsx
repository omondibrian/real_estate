import React from "react";
import Head from "next/head";
import {
  useRive,
  Layout,
  Fit,
  Alignment,
  useStateMachineInput,
} from "@rive-app/react-canvas";
import SignUpForm, { SignUpFormValues } from "../components/Auth/SignUpForm";

function SignUp() {
  function onSubmit({ email, password }: SignUpFormValues) {
    // login({
    //   email,
    //   password,
    // });
    console.log("submiting");
    console.log({ email, password });
  }
  const MACHINE_NAME = "Robot";
  const { rive, RiveComponent } = useRive({
    src: "/static/assets/robot.riv",
    autoplay: true,
    layout: new Layout({
      fit: Fit.Contain,
      alignment: Alignment.Center,
    }),
    stateMachines: MACHINE_NAME,
    artboard: "Character",
    onLoad:(e)=>{
      const input = rive?.stateMachineInputs(MACHINE_NAME);
      console.log(input)
    }
  });

  const inputs = useStateMachineInput(rive, MACHINE_NAME,"Fly")!;
  console.log({ inputs, content: rive?.contents });
  return (
    <>
      <Head>
        <title>SignUp</title>
        <link rel="icon" href="/favicon.ico" />
      </Head>
      <div className="flex flex-row w-full h-full">
        <div className="flex flex-1 flex-col h-screen text-white justify-center text-5xl font-bold items-center bg-purple-600">
          <RiveComponent />
        </div>
        <div className="flex flex-1 flex-col justify-center p-3">
          <SignUpForm
            onSubmit={onSubmit}
            email=""
            password=""
            isLoading={false}
          />

          
        </div>
      </div>
    </>
  );
}

export default SignUp;
