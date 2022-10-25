import React from "react";
import SignInForm, { SignInFormValues } from "../components/Auth/SignInForm";
import Head from "next/head";



function Signin() {
  function onSubmit({ email, password }: SignInFormValues) {
    // login({
    //   email,
    //   password,
    // });
    console.log("submiting");
    console.log({ email, password });
  }
  
  // console.log({ inputs, content: rive?.contents });
  return (
    <>
      <Head>
        <title>SignIn</title>
        <link rel="icon" href="/favicon.ico" />
      </Head>
      <div className="flex flex-row w-full h-full">
        <div className="flex flex-1 flex-col h-screen text-white justify-center text-5xl font-bold items-center bg-purple-600">
          Welcome Back
        </div>
        <div className="flex flex-1 flex-col justify-center p-3">
         
          <SignInForm
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

export default Signin;
