import React, { useContext } from "react";
import { SubmitHandler } from "react-hook-form";
import * as yup from "yup";
import { ApplicationStateContext } from "../../state/context";
import { IAppActionTypes } from "../../state/context/appReducer";
import Button from "../form/Button";
import FileInput from "../form/FileInput";
import Form from "../form/Form";
import FormInput from "../form/FormInput";
import { ArrowNextIcon } from "../icons/arrow-next";

const NewPropertySchema = yup.object().shape({
  name: yup.string().required("error-property_name-required"),
  phoneNumber: yup.string().min(10).required("error-phoneNumber-required"),
  contact: yup.string().required("error-property_contact-required"),
  image: yup.string().required("error-property_image-required"),
});

const baseUnitInfoSchema = yup.object().shape({
  room: yup.string().required("error-property_room_name-required"),
  contact: yup.string().required("error-property_contact-required"),
  image: yup.string().required("error-property_image-required"),
});

const coreUnitInfoSchema = yup.object().shape({
  livingSpace: yup.string().required("error-property_livingSpace-required"),
  type: yup.string().required("error-property_type-required"),
  baths: yup.number().required("error-property_baths-required"),
  bedrooms: yup.number().required("error-property_bedrooms-required"),
  ammenities: yup.string().required("error-property_ammenities-required"),
  pricePerMonth: yup.string().required("error-property_pricePerMonth-required"),
});

const propertyOverviewSchema = yup.object().shape({
  propertyOverview: yup
    .string()
    .required("error-property_propertyOverview-required"),
});

export type NewPropertyFormValues = {
  name: string;
  phoneNumber: string;
  contact: string;
  image: string;
};

export type baseUnitFormValues = {
  room: string;
  contact: string;
  image: string;
};

export type coreUnitFormValues = {
  livingSpace: string;
  type: string;
  baths: number;
  bedrooms: number;
  ammenities: string;
  pricePerMonth: number;
};

export type propertyOverviewUnitFormValues = {
  image: string;
};

export default function NewPropertyForm() {
  const [isLoading, setLoading] = React.useState(false);
  const [serverError, setError] = React.useState({});
  const { state, dispatch } = useContext(ApplicationStateContext);
  const propertyFormHandle: SubmitHandler<NewPropertyFormValues> = (
    data: any
  ) => {
    console.log("from handler --->", data);
    dispatch({
      type: IAppActionTypes.ADD_LISTING,
      payload: {
        ...data,
        imageUrl: data.imageUrl[0],
        lat: 0.0,
        long: 0.0,
      },
    });
  };
  return (
    <Form<NewPropertyFormValues>
      onSubmit={propertyFormHandle}
      useFormProps={{
        defaultValues: { name: "", phoneNumber: "", contact: "", image: "" },
      }}
      validationSchema={NewPropertySchema}
      serverError={serverError && serverError}
      className="text-left"
    >
      {({ register, formState: { errors }, control }) => {
        return (
          <>
            <div className="flex justify-center font-lg text-black mx-4 font-bold">
              New Property Listing
            </div>
            <FormInput
              labelStr={"Property Name"}
              type="text"
              placeHolder="Tsavo Apartments"
              {...register("name")}
              error={errors.name?.message!}
            />

            <FormInput
              labelStr={"phoneNumber"}
              type="text"
              placeHolder="+254 735 602 570 "
              {...register("phoneNumber")}
              error={errors.phoneNumber?.message!}
            />

            <FormInput
              labelStr={"email"}
              type="text"
              placeHolder="apertment@mail.com"
              {...register("contact")}
              error={errors.contact?.message!}
            />

            <FileInput control={control} name={"imageUrl"} />
            <Button
              type="submit"
              className="!mt-5 w-full text-sm tracking-[0.2px] lg:!mt-6  bg-indigo-600  hover:bg-purple-200 text-gray-100 p-3  rounded-lg  font-semibold  cursor-pointer transition ease-in duration-500"
              loading={isLoading}
              disabled={isLoading}
            >
              submit
              <ArrowNextIcon className="ml-2 w-5" />
            </Button>
          </>
        );
      }}
    </Form>
  );
}

function BaseUnitForm({
  onSubmit,
  isLoading,
  serverError,
}: {
  onSubmit: SubmitHandler<baseUnitFormValues>;
  isLoading: boolean;
  serverError: any;
}) {
  return (
    <Form<baseUnitFormValues>
      onSubmit={onSubmit}
      useFormProps={{
        defaultValues: { room: "", contact: "", image: "" },
      }}
      validationSchema={baseUnitInfoSchema}
      serverError={serverError && serverError}
      className="text-left"
    >
      {({ register, formState: { errors, dirtyFields }, control }) => {
        console.log(dirtyFields);

        return (
          <>
            <FormInput
              labelStr={"room Name"}
              type="text"
              placeHolder="Unit 1"
              {...register("room")}
              error={errors.room?.message!}
            />

            <FormInput
              labelStr={"email"}
              type="text"
              placeHolder="apertment@mail.com"
              {...register("contact")}
              error={errors.contact?.message!}
            />

            <FileInput control={control} name={"imageUrl"} multiple={false} />
            <Button
              type="submit"
              className="!mt-5 w-full text-sm tracking-[0.2px] lg:!mt-6  bg-indigo-600  hover:bg-purple-200 text-gray-100 p-3  rounded-lg  font-semibold  cursor-pointer transition ease-in duration-500"
              loading={isLoading}
              disabled={isLoading}
            >
              submit
              <ArrowNextIcon className="ml-2 w-5" />
            </Button>
          </>
        );
      }}
    </Form>
  );
}
