import { SubmitHandler } from "react-hook-form";
import * as yup from "yup";
import {
  ForgotPasswordUserInput,
  FormSteps,
  ResetPasswordUserInput,
  VerifyForgotPasswordUserInput,
} from "../../state/types";
import Button from "../form/Button";
import FormInput from "../form/FormInput";
import { ArrowNextIcon } from "../icons/arrow-next";
import Form from "../form/Form";
import { ArrowPrevIcon } from "../icons/arrow-prev";
import PasswordInput from "../form/PasswordInput";
import { useContext } from "react";
import { ApplicationStateContext } from "../../state/context";
import { IAppActionTypes } from "../../state/context/appReducer";
import Alert from "../Alert";
import { useRouter } from "next/router";

const emailFormValidation = yup.object().shape({
  email: yup
    .string()
    .email("error-email-format")
    .required("error-email-required"),
});
const tokenFormValidation = yup.object().shape({
  token: yup.string().required("error-password-required"),
});
const passwordFormValidation = yup.object().shape({
  password: yup.string().required(),
});

function EmailForm({
  email,
  onSubmit,
  isLoading,
  serverError,
}: {
  email: string;
  onSubmit: SubmitHandler<Pick<ForgotPasswordUserInput, "email">>;
  isLoading: boolean;
  serverError: any;
}) {
  return (
    <Form<Pick<ForgotPasswordUserInput, "email">>
      onSubmit={onSubmit}
      useFormProps={{
        defaultValues: { email },
      }}
      validationSchema={emailFormValidation}
      serverError={serverError && serverError}
      className="text-left"
    >
      {({ register, formState: { errors } }) => (
        <>
          <FormInput
            labelStr={"Email"}
            type="email"
            placeHolder="johnDoe@site.com"
            {...register("email")}
            error={errors.email?.message!}
          />
          <Button
            type="submit"
            className="!mt-5 w-full text-sm tracking-[0.2px] lg:!mt-6  bg-indigo-600  hover:bg-purple-200 text-gray-100 p-3  rounded-lg  font-semibold  cursor-pointer transition ease-in duration-500"
            loading={isLoading}
            disabled={isLoading}
          >
            submit email
            <ArrowNextIcon className="ml-2 w-5" />
          </Button>
        </>
      )}
    </Form>
  );
}

function TokenForm({
  token,
  onSubmit,
  isLoading,
  serverError,
  handlePrevStep,
}: {
  token: string;
  onSubmit: SubmitHandler<Pick<VerifyForgotPasswordUserInput, "token">>;
  isLoading: boolean;
  serverError: any;
  handlePrevStep: () => void;
}) {
  return (
    <Form<Pick<VerifyForgotPasswordUserInput, "token">>
      onSubmit={onSubmit}
      useFormProps={{
        defaultValues: { token },
      }}
      validationSchema={tokenFormValidation}
      serverError={serverError}
    >
      {({ register, formState: { errors } }) => (
        <>
          <FormInput
            labelStr={"Received Token"}
            placeHolder="Token"
            type="text"
            {...register("token")}
            error={errors.token?.message!}
          />
          <div className="grid grid-cols-1 gap-4 mt-4 sm:grid-cols-2">
            <Button
              onClick={handlePrevStep}
              className="order-1 w-full bg-indigo-600  hover:bg-purple-200 text-gray-100 p-3  rounded-lg  font-semibold  cursor-pointer transition ease-in duration-500"
            >
              <ArrowPrevIcon className="w-5" />
              previous step
            </Button>

            <Button
              className="w-full text-sm tracking-[0.2px] sm:order-2  bg-indigo-600  hover:bg-purple-200 text-gray-100 p-3  rounded-lg  font-semibold  cursor-pointer transition ease-in duration-500"
              loading={isLoading}
              disabled={isLoading}
            >
              submit token
              <ArrowNextIcon className="w-5" />
            </Button>
          </div>
        </>
      )}
    </Form>
  );
}

function PasswordForm({
  onSubmit,
  isLoading,
  handlePrevStep,
}: {
  onSubmit: SubmitHandler<Pick<ResetPasswordUserInput, "password">>;
  isLoading: boolean;
  handlePrevStep: () => void;
}) {
  return (
    <Form<Pick<ResetPasswordUserInput, "password">>
      onSubmit={onSubmit}
      useFormProps={{
        defaultValues: { password: "" },
      }}
      validationSchema={passwordFormValidation}
    >
      {({ register, formState: { errors } }) => (
        <>
          <PasswordInput
            label={"New password"}
            {...register("password")}
            error={errors.password?.message!}
          />
          <div className="grid grid-cols-1 gap-4 mt-4 sm:grid-cols-2">
            <Button
              onClick={handlePrevStep}
              className="order-1 w-full bg-indigo-600  hover:bg-purple-200 text-gray-100 p-3  rounded-lg  font-semibold  cursor-pointer transition ease-in duration-500"
            >
              <ArrowPrevIcon className="w-5" />
              previous step
            </Button>
            <Button
              className="w-full text-sm tracking-[0.2px] sm:order-2  bg-indigo-600  hover:bg-purple-200 text-gray-100 p-3  rounded-lg  font-semibold  cursor-pointer transition ease-in duration-500"
              loading={isLoading}
              disabled={isLoading}
            >
              reset password
            </Button>
          </div>
        </>
      )}
    </Form>
  );
}

function RenderFormSteps() {
  const { state, dispatch } = useContext(ApplicationStateContext);
  const emailFormHandle: SubmitHandler<Pick<ForgotPasswordUserInput, "email">> =
    ({ email }) => {
      dispatch({
        type: IAppActionTypes.FORGOT_PASSWORD,
        payload: { email },
      });
    };

  const passwordFormHandle: SubmitHandler<
    Pick<ResetPasswordUserInput, "password">
  > = ({ password }) => {
    dispatch({
      type: IAppActionTypes.RESET_PASSWORD,
      payload: {
        password,
        token: state.passwordReset.data.token,
        email: state.passwordReset.data.email,
      },
    });
  };

  const tokenFormHandle: SubmitHandler<
    Pick<VerifyForgotPasswordUserInput, "token">
  > = ({ token }) => {
    dispatch({
      type: IAppActionTypes.VERIFY_FORGOT_TOKEN,
      payload: {
        token: state.passwordReset.data.token,
        email: state.passwordReset.data.email,
      },
    });
  };

  function backToPreviousStep(step: FormSteps) {
    dispatch({
      type: IAppActionTypes.UPDATE_STEP,
      payload: {
        step,
      },
    });
  }

  return (
    <div>
      {state.passwordReset.formStep === "Email" && (
        <EmailForm
          email={state.passwordReset.data.email}
          onSubmit={emailFormHandle}
          isLoading={state.passwordReset.loading}
          serverError={state.passwordReset.errors}
        />
      )}
      {state.passwordReset.formStep === "Token" && (
        <>
          <Alert className="mb-4" message={state.passwordReset.data.message} />
          <TokenForm
            token={state.passwordReset.data.token}
            onSubmit={tokenFormHandle}
            isLoading={state.passwordReset.loading}
            serverError={state.passwordReset.errors}
            handlePrevStep={() => backToPreviousStep("Email")}
          />
        </>
      )}
      {state.passwordReset.formStep === "Password" && (
        <>
          <PasswordForm
            onSubmit={passwordFormHandle}
            isLoading={state.passwordReset.loading}
            handlePrevStep={() => backToPreviousStep("Token")}
          />
        </>
      )}
    </div>
  );
}

export default function ForgotPassword() {
  const { dispatch, state } = useContext(ApplicationStateContext);
  return (
    <div className="flex h-full min-h-screen w-screen flex-col justify-center bg-white py-6 px-5 sm:p-8 md:h-auto md:min-h-0 md:max-w-[480px] md:rounded-xl">
      <p className="mt-4 text-sm leading-relaxed text-center mb-7 capitalize font-semibold text-body sm:mt-5 sm:mb-10 md:text-base">
        forgot password
      </p>
      <RenderFormSteps />
      <div className="relative flex flex-col items-center justify-center text-sm mt-9 mb-7 text-heading sm:mt-11 sm:mb-8">
        <hr className="w-full" />
        <span className="start-2/4 -ms-4 absolute -top-2.5 bg-light px-2">
          or
        </span>
      </div>
      <div className="text-sm text-center text-body sm:text-base">
        back to
        <button
          onClick={() =>
            dispatch({
              type: IAppActionTypes.CLOSE_MODAL,
              payload: {
                view: state.modal.view!,
                data: null,
              },
            })
          }
          className="font-semibold ml-1 text-gray-600 underline transition-colors duration-200 ms-1 text-accent hover:text-accent-hover hover:no-underline focus:text-accent-hover focus:no-underline focus:outline-none"
        >
          login
        </button>
      </div>
    </div>
  );
}
