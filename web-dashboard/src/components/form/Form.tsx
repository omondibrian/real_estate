import React, { useEffect } from "react";
import type {
  UseFormReturn,
  SubmitHandler,
  UseFormProps,
  Path,
  FieldValues,
} from "react-hook-form";
import { useForm } from "react-hook-form";
import type { SchemaOf } from "yup";
import { yupResolver } from "@hookform/resolvers/yup";

type ServerErrors<T> = {
  [Property in keyof T]: string;
};
type IFormProps<TFormValues extends FieldValues> = {
  onSubmit: SubmitHandler<TFormValues>;
  children: (methods: UseFormReturn<TFormValues>) => React.ReactNode;
  useFormProps?: UseFormProps<TFormValues>;
  validationSchema?: SchemaOf<TFormValues>;
  serverError?: ServerErrors<Partial<TFormValues>> | null;
  resetValues?: TFormValues;
  className?: string;
  [key: string]: unknown;
};

const Form = <TFormValues extends Record<string, any> = Record<string, any>>({
  onSubmit,
  children,
  useFormProps,
  validationSchema,
  serverError,
  resetValues,
  ...props
}: IFormProps<TFormValues>) => {
  const methods = useForm<TFormValues>({
    ...(!!validationSchema && { resolver: yupResolver(validationSchema) }),
    ...(!!useFormProps && useFormProps),
  });
  useEffect(() => {
    if (serverError) {
      console.log('----error---',serverError)
      Object.entries(serverError).forEach(([key, value]) => {
        console.log(value)
        methods.setError(key as Path<TFormValues>, {
          type: "manual",
          message: value,
        });
      });
    }
  }, [serverError, methods]);

  useEffect(() => {
    if (resetValues) {
      methods.reset(resetValues);
    }
  }, [resetValues, methods]);
  return (
    <form
      onSubmit={(e) => {
        e.preventDefault();
        onSubmit(methods.getValues())
        // console.log(methods.getValues())
      }}
      noValidate
      {...props}
      className="p-6 mt-2 w-full bg-white rounded-lg border border-gray-200 shadow-md"
    >
      {children(methods)}
    </form>
  );
};

export default Form;
