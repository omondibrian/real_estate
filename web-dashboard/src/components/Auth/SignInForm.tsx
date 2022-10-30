import { SubmitHandler } from "react-hook-form";
import Button from "../form/Button";
import FormInput from "../form/FormInput";
import PasswordInput from "../form/PasswordInput";
import Form from "../form/Form";
import * as yup from "yup";
import { FocusEventHandler, useContext, useEffect, useState } from "react";
import { ApplicationStateContext } from "../../state/context";
import { IAppActionTypes } from "../../state/context/appReducer";
import {
  useRive,
  Layout,
  Fit,
  Alignment,
  useStateMachineInput,
  StateMachineInput,
} from "@rive-app/react-canvas";

const machineActions = {
  look: "numLook",
  check: "isChecking",
  success: "trigSuccess",
  fail: "trigFail",
  up: "isHandsUp",
};
const SignInSchema = yup.object().shape({
  email: yup
    .string()
    .email("error-email-format")
    .required("error-email-required"),
  password: yup.string().min(5).required("error-password-required"),
});

export type SignInFormValues = {
  email: string;
  password: string;
};

interface SignInFormProps {
  onSubmit: SubmitHandler<SignInFormValues>;
  email?: string;
  password?: string;
  isLoading?: boolean;
}

export default function SignInForm(props: SignInFormProps) {
  const { dispatch } = useContext(ApplicationStateContext);
  const [inputLookMultiplier, setWidth] = useState(0);
  // machine actions
  let numLookInput: StateMachineInput,
    isCheckingInput: StateMachineInput,
    trigSuccessInput: StateMachineInput,
    trigFailInput: StateMachineInput,
    isHandsUpInput: StateMachineInput;

  const MACHINE_NAME = "Login";
  const { rive, RiveComponent } = useRive({
    src: "/static/assets/login.riv",
    autoplay: true,
    layout: new Layout({
      fit: Fit.Contain,
      alignment: Alignment.Center,
    }),
    stateMachines: MACHINE_NAME,

  });
  useEffect(() => {
    const email = document.getElementById("email");
    if (email && !inputLookMultiplier) {
      setWidth((email.offsetWidth - 10) / 100);
    }

  });

  numLookInput = useStateMachineInput(rive, MACHINE_NAME, machineActions.look)!;
  isCheckingInput = useStateMachineInput(
    rive,
    MACHINE_NAME,
    machineActions.check
  )!;
  trigSuccessInput = useStateMachineInput(
    rive,
    MACHINE_NAME,
    machineActions.success
  )!;
  trigFailInput = useStateMachineInput(
    rive,
    MACHINE_NAME,
    machineActions.fail
  )!;
  isHandsUpInput = useStateMachineInput(rive, MACHINE_NAME, machineActions.up)!;

  const onPasswordFocus = (e: any) => (isHandsUpInput.value = true);
  const onPasswordBlur:FocusEventHandler<HTMLInputElement> = (e) => {
    isHandsUpInput.value = false;
    console.log("calling blur");
    
  };

  const onEmailChange = (e: any) => {
    const newVal = e.target.value;
    if (isCheckingInput !== null && !isCheckingInput.value) {
      isCheckingInput.value = true;
    }
    const numChars = newVal.length;
    numLookInput.value = numChars * inputLookMultiplier;
    console.log("---email- change ----",numLookInput.value);
  };
  const onEmailFocus = (e: any) => {
    const emailVal = e.target.value;
    console.log(emailVal);

    isCheckingInput.value = true;
    if (
      numLookInput !== null &&
      numLookInput.value !== emailVal.length * inputLookMultiplier
    ) {
      numLookInput.value = emailVal.length * inputLookMultiplier;
    }
  };
  return (
    <>
      <div className="h-48 w-full">
        <RiveComponent />
      </div>
      <Form<SignInFormValues>
        onSubmit={props.onSubmit}
        useFormProps={{
          defaultValues: {
            email: props.email,
            password: props.password,
          },
        }}
        validationSchema={SignInSchema}
      >
        {({ register, formState: { errors } }) => {
          return (
            <div className="flex flex-col">
              <div className="flex justify-center font-lg text-black mx-4 font-bold">
                Sign In
              </div>
              <div className="flex  items-center md:min-w-[360px] justify-center">
                <FormInput
                  labelStr="Email"
                  type="email"
                  focus={onEmailFocus}
                  change={onEmailChange}
                  placeHolder="johnDoe@site.com"
                  error={errors.email?.message!}
                  {...register("email")}
                />
              </div>

              <div className="flex w-full justify-center">
                <PasswordInput
                  label="Password"
                  type="password"
                  className="w-full px-3"
                  shadow={true}
                  onFocus={onPasswordFocus}
                  blur={onPasswordBlur}
                  
                  forgotPageRouteOnClick={() => {
                    dispatch({
                      type: IAppActionTypes.OPEN_MODAL,
                      payload: {
                        view: "forgotpass",
                        data: {},
                      },
                    });
                  }}
                  error={errors.password?.message!}
                  {...register("password")}
                />
              </div>

              <div className="mt-8">
                <Button
                  className="h-11 w-full sm:h-12 justify-center bg-indigo-600  hover:bg-purple-200 text-gray-100 p-3  rounded-lg tracking-wide font-semibold  cursor-pointer transition ease-in duration-500"
                  loading={props.isLoading}
                  disabled={props.isLoading}
                  type="submit"
                >
                  SignIn
                </Button>
              </div>
            </div>
          );
        }}
      </Form>
    </>
  );
}
