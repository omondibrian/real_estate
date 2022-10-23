import { SubmitHandler } from "react-hook-form";
import Button from "../form/Button";
import FormInput from "../form/FormInput";
import PasswordInput from "../form/PasswordInput";
import Form from "../form/Form";
import * as yup from "yup";
import { useContext } from "react";
import { ApplicationStateContext } from "../../state/context";
import { IAppActionTypes } from "../../state/context/appReducer";

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
  return (
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
                forgotPageRouteOnClick={() => {
                  dispatch({
                    type: IAppActionTypes.OPEN_MODAL,
                    payload: {
                      view: "forgotpass",data:{}
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
  );
}
