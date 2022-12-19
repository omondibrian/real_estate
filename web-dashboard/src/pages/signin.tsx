import Head from 'next/head';
import { useRouter } from 'next/router';
import React, { useContext } from 'react';

import { AppRoutes } from '../AppRoutes';
import SignInForm, { SignInFormValues } from '../components/Auth/SignInForm';
import { ApplicationStateContext } from '../state/context';
import { IAppActionTypes } from '../state/context/appReducer';
import { AppManager } from '../state/service';

function Signin() {
  const router = useRouter()
  const { dispatch } = useContext(ApplicationStateContext);
  const [serverError, setError] = React.useState<{}|null>(null);
  async function onSubmit({ email, password }: SignInFormValues) {
    const appManager = new AppManager();
    const res = await appManager.signin(email,password);
    //error message
    if(res?.msg){
      setError({msg: res.msg});
    }
    
    //successfull operation
    if(res?.payload){
      dispatch({
        type: IAppActionTypes.FETCH_PROFILE,
        payload: {
          email: res?.payload.email,
          name: res?.payload.name,
          imageUrl: res?.payload.profileImage,
          phoneNumber: res?.payload.phoneNumber || "1234567",
          placementDate: res?.payload.placementDate,
          accountState: res?.payload.accountState,
          role: res?.payload.role,
        }
      });
      router.push(AppRoutes.DashBoard);
    }
   
  }

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
            serverError={serverError}
          />
        </div>
      </div>
    </>
  );
}

export default Signin;
