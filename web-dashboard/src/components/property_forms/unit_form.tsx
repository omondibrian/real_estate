import React, { useContext } from "react";
import { SubmitHandler } from "react-hook-form";
import * as yup from "yup";

import { ApplicationStateContext } from "../../state/context";
import { AppManager } from "../../state/service";
import { UnitFormSteps } from "../../state/types";
import Alert from "../Alert";
import Button from "../form/Button";
import FileInput from "../form/FileInput";
import Form from "../form/Form";
import FormInput from "../form/FormInput";
import { ArrowNextIcon } from "../icons/arrow-next";
import { ArrowPrevIcon } from "../icons/arrow-prev";

const baseUnitInfoSchema = yup.object().shape({
  room: yup.string().required("error-property_room_name-required"),
  contact: yup.string().required("error-property_contact-required"),
  imageUrl: yup.string().required("error-property_image-required"),
});

const coreUnitInfoSchema = yup.object().shape({
  livingSpace: yup.string().required("error-property_livingSpace-required"),
  type: yup.string().required("error-property_type-required"),
  baths: yup.number().required("error-property_baths-required"),
  bedrooms: yup.number().required("error-property_bedrooms-required"),
  ammenities: yup.string().required("error-property_ammenities-required"),
  pricePerMonth: yup.number().required("error-property_pricePerMonth-required"),
});

const propertyOverviewSchema = yup.object().shape({
  propertyOverview: yup
    .string()
    .required("error-property_propertyOverview-required"),
});

export type baseUnitFormValues = {
  room: string;
  contact: string;
  imageUrl: string | File;
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
  propertyOverview: string;
};

function BaseUnitForm({
  baseInfo,
  onSubmit,
  isLoading,
  serverError,
}: {
  baseInfo: baseUnitFormValues;
  onSubmit: SubmitHandler<baseUnitFormValues>;
  isLoading: boolean;
  serverError: any;
}) {
  return (
    <Form<baseUnitFormValues>
      onSubmit={onSubmit}
      useFormProps={{
        defaultValues: baseInfo,
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
              placeHolder="apartment@mail.com"
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

function CoreUnitInFoForm({
  core,
  onSubmit,
  isLoading,
  serverError,
  handlePrevStep,
}: {
  core: coreUnitFormValues;
  onSubmit: SubmitHandler<coreUnitFormValues>;
  isLoading: boolean;
  serverError: any;
  handlePrevStep: () => void;
}) {
  return (
    <Form<coreUnitFormValues>
      onSubmit={onSubmit}
      useFormProps={{
        defaultValues: core,
      }}
      validationSchema={coreUnitInfoSchema}
      serverError={serverError && serverError}
      className="text-left"
    >
      {({ register, formState: { errors, dirtyFields }, control }) => {
        console.log(dirtyFields);

        return (
          <>
            <FormInput
              labelStr={"Living Space"}
              type="text"
              placeHolder="500 m2"
              {...register("livingSpace")}
              error={errors.ammenities?.message!}
            />

            <FormInput
              labelStr={"price per month"}
              type="text"
              placeHolder="30,000"
              {...register("pricePerMonth")}
              error={errors.pricePerMonth?.message!}
            />

            <FormInput
              labelStr={"Number of BedRooms"}
              type="text"
              placeHolder="3"
              {...register("bedrooms")}
              error={errors.bedrooms?.message!}
            />
            <FormInput
              labelStr={"Number of Baths"}
              type="text"
              placeHolder="3"
              {...register("baths")}
              error={errors.baths?.message!}
            />

            <FormInput
              labelStr={"Ammenities"}
              type="text"
              placeHolder="Gym , Spa"
              {...register("ammenities")}
              error={errors.ammenities?.message!}
            />

            <FormInput
              labelStr={"Type of Apartment"}
              type="text"
              placeHolder="Budget"
              {...register("type")}
              error={errors.type?.message!}
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
                Next
              </Button>
            </div>
          </>
        );
      }}
    </Form>
  );
}

function PropertyOverviewForm({
  overview,
  onSubmit,
  isLoading,
  serverError,
  handlePrevStep,
}: {
  overview: propertyOverviewUnitFormValues;
  onSubmit: SubmitHandler<propertyOverviewUnitFormValues>;
  isLoading: boolean;
  serverError: any;
  handlePrevStep: () => void;
}) {
  return (
    <Form<propertyOverviewUnitFormValues>
      onSubmit={onSubmit}
      useFormProps={{
        defaultValues: overview,
      }}
      validationSchema={propertyOverviewSchema}
      serverError={serverError && serverError}
      className="text-left"
    >
      {({ register, formState: { errors, dirtyFields }, control }) => {
        console.log(dirtyFields);

        return (
          <>
            <div className="flex justify-center font-lg text-black mx-4 font-bold">
              Unit Highlights
            </div>
            <FileInput
              control={control}
              name={"propertyOverview"}
              multiple={true}
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
                Submit
              </Button>
            </div>
          </>
        );
      }}
    </Form>
  );
}

export default function RenderUnitFormSteps() {
  const { state, dispatch } = useContext(ApplicationStateContext);

  const [renderState, setState] = React.useState<{
    formStep: UnitFormSteps;
    baseInfo: baseUnitFormValues;
    coreInfo: coreUnitFormValues;
    overview: propertyOverviewUnitFormValues;
    loading: boolean;
    errors: any;
  }>({
    formStep: "base",
    baseInfo: { room: "", contact: "", imageUrl: "" },
    overview: { propertyOverview: "" },
    coreInfo: {
      ammenities: "",
      baths: 0,
      bedrooms: 0,
      livingSpace: "",
      pricePerMonth: 0,
      type: "",
    },
    loading: false,
    errors: {},
  });
  const baseUnitInfoFormHandler: SubmitHandler<baseUnitFormValues> = (data) => {
    console.log(data);

    setState({
      ...renderState,
      baseInfo: {
        ...data,
        imageUrl: (data.imageUrl as unknown as Array<File>).pop()!,
      },
      formStep: "core",
    });
  };

  const coreUnitFormInfoHandler: SubmitHandler<coreUnitFormValues> = (
    coreVals
  ) => {
    console.log(renderState);
    setState({ ...renderState, coreInfo: coreVals, formStep: "overview" });
  };

  const propertyOverviewFormHandler: SubmitHandler<propertyOverviewUnitFormValues> =
    (data) => {
      setState({
        ...renderState,
        overview: {
          propertyOverview: data.propertyOverview,
        },
        loading: true,
      });
      console.log(`property overview `, data.propertyOverview);
      new AppManager()
        .createUnit({
          propertyId:
            state.properties[state.currentSelectedPropertyIndex].id,
          ...renderState.baseInfo,
          ...renderState.coreInfo,
          propertyOverview: data.propertyOverview as unknown as Array<File>,
          imageUrl: renderState.baseInfo.imageUrl as File,
          state: true,
          ammenities: renderState.coreInfo.ammenities.split(","),
          pricePerMonth: renderState.coreInfo.pricePerMonth + "",
        })
        .then((data) => {
          console.log(data);
          setState({ ...renderState, loading: false });
        });
      
    };

  function backToPreviousStep(step: UnitFormSteps) {
    setState({ ...renderState, formStep: step });
  }

  return (
    <div>
      {renderState.formStep === "base" && (
        <BaseUnitForm
          baseInfo={renderState.baseInfo}
          onSubmit={baseUnitInfoFormHandler}
          isLoading={renderState.loading}
          serverError={renderState.errors}
        />
      )}
      {renderState.formStep === "overview" && (
        <>
          {/* <Alert className="mb-4" message={renderState.data.message} /> */}
          <PropertyOverviewForm
            overview={renderState.overview}
            onSubmit={propertyOverviewFormHandler}
            isLoading={renderState.loading}
            serverError={renderState.errors}
            handlePrevStep={() => backToPreviousStep("core")}
          />
        </>
      )}
      {renderState.formStep === "core" && (
        <>
          <CoreUnitInFoForm
            core={renderState.coreInfo}
            onSubmit={coreUnitFormInfoHandler}
            isLoading={renderState.loading}
            serverError={renderState.errors}
            handlePrevStep={() => backToPreviousStep("base")}
          />
        </>
      )}
    </div>
  );
}
