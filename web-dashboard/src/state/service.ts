import { UserDTO } from "./dtos/userDto";
import { PropertyListings, Unit } from "./entities/PropertyListings";
import { User } from "./entities/user";
import client from "../state/context/apollo-client";
import {
  createNewUnit,
  createPropertyListing,
  fetchProfile,
  myListings,
  SignInQuery,
} from "./context/graphql.schema";
import { CreateUnit } from "./types";

const data = [
  {
    room: "1th Floor,left,room ",
    pill: {
      color: "#59b73d",
      label: "Occupied",
    },
    customerName: "John Doe",
    livingSpace: "112 sq m",
  },
  {
    room: "2th Floor,left,room ",
    pill: {
      color: "#463587",
      label: "Vacant",
    },
    customerName: "No tenant",
    livingSpace: "112 sq m",
  },
  {
    room: "3th Floor,left,room ",
    pill: {
      color: "#474861",
      label: "Request",
    },
    customerName: "No tenant",

    livingSpace: "118 sq m",
  },
  {
    room: "4th Floor,left,room ",
    pill: {
      color: "#f16a2e",
      label: "Maintenance",
    },
    customerName: "Courtney Henry",
    livingSpace: "118 sq m",
  },
];

interface IAppManager {
  signin(
    email: string,
    password: string
  ): Promise<{ msg?: string; payload?: User } | undefined>;
  signup(user: UserDTO): Promise<{ msg: string }>;
  isAuth(): boolean;
  signout(): boolean;
  fetchUserData(
    id: string
  ): Promise<{ msg?: string; payload?: User } | undefined>;
  getPropertyListings(): Promise<
    | {
        propertyListings?: Array<PropertyListings>;
        msg?: string;
      }
    | undefined
  >;
  createPropertyListing(listing: {
    contact: string;
    lat: number;
    long: number;
    phoneNumber: string;
    imageUrl: File;
  }): Promise<PropertyListings | { msg: any }>;

  createUnit(unit: CreateUnit): Promise<Unit | { msg: any }>;
}

export class AppManager implements IAppManager {
  async createUnit(unit: CreateUnit): Promise<Unit | { msg: any }> {
    console.log(unit)
    const { data, errors } = await client.mutate({
      mutation: createNewUnit,
      variables: {
        ...unit,
        baths: +unit.baths,
        bedrooms: + unit.bedrooms
      },
    });
    if (errors) {
      alert(errors[0].message);
    }
    switch (data.createUnit.__typename) {
      case "UnitPayload":
        const res = new Unit(
          data.CreateUnit.id,
          data.CreateUnit.room,
          data.CreateUnit.state,
          data.CreateUnit.user.name,
          data.CreateUnit.user.id,
          data.CreateUnit.livingSpace,
          data.CreateUnit.ammenities,
          data.CreateUnit.propertyOverview,
          data.CreateUnit.currentTenant,
          data.CreateUnit.pricePerMonth
        );
        return res;
      case "ApplicationErrors":
        return {
          msg: data.createUnit.errorMessage,
        };
      default:
        throw new Error("unImplemented responce type");
    }
  }
  async createPropertyListing(listing: {
    contact: string;
    lat: number;
    long: number;
    name: string;
    phoneNumber: string;
    imageUrl: File;
  }) {
    console.log(listing);
    const { data, errors } = await client.mutate({
      mutation: createPropertyListing,
      variables: {
        ...listing,
      },
    });
    if (errors) {
      alert(errors[0].message);
    }
    switch (data.createPropertyListing.__typename) {
      case "PropertyPayload":
        const property = data.createPropertyListing.property as any;
        const listing = new PropertyListings(
          property.id,
          [],
          property.name,
          "https://raw.githubusercontent.com/adrianhajdin/projects_realestate/main/assets/images/house.jpg",
          property.phoneNumber,
          property.contact,
          property.lat,
          property.long,
          property.manager
        );
        return listing;
      case "ApplicationErrors":
        return {
          msg: data.createPropertyListing.errorMessage,
        };
      default:
        throw new Error("unImplemented responce type");
    }
  }
  async fetchUserData(
    id: string
  ): Promise<{ msg?: string; payload?: User } | undefined> {
    let user = localStorage.getItem("user");
    if (!user) {
      const { data, errors } = await client.query({
        query: fetchProfile,
      });
      if (errors) {
        alert(errors[0].message);
      }
      switch (data.fetchProfile.__typename) {
        case "ApplicationErrors":
          return { msg: data.fetchProfile.errorMessage };
        case "User":
          localStorage.setItem("user", JSON.stringify(data.fetchProfile));
          const user = new User(
            data.fetchProfile.name,
            data.fetchProfile.email,
            "https://randomuser.me/api/portraits/thumb/men/75.jpg",
            data.fetchProfile.phoneNumber || "1234567",
            data.fetchProfile.role,
            data.fetchProfile.placementDate,
            data.fetchProfile.accountState
          );
          return {
            payload: user,
          };

        default:
          break;
      }
    } else {
      const parsedUser = JSON.parse(user);
      const finalUser = new User(
        parsedUser.name!,
        parsedUser.email!,
        "https://randomuser.me/api/portraits/thumb/men/75.jpg",
        parsedUser.phoneNumber! || "1234567",
        parsedUser.role!,
        parsedUser.placementDate!,
        parsedUser.accountState!
      );
      return { payload: finalUser };
    }
  }
  async getPropertyListings(): Promise<
    | {
        propertyListings?: Array<PropertyListings>;
        msg?: string;
      }
    | undefined
  > {
    const { data, errors } = await client.mutate({
      mutation: myListings,
    });

    if (errors) {
      alert(errors[0].message);
    }
    if (data.myListings) {
      switch (data.myListings["__typename"]) {
        case "ListingsPayload":
          const properties = data.myListings.properties as [any];
          const propertyListings = properties.map((p) => {
            const units = p.propertyUnits.map((u: any) => {
              return new Unit(
                u.id,
                u.room,
                "Occupied",
                u.currentTenant.user.name,
                u.currentTenant.id,
                u.livingSpace,
                u.ammenities,
                amm,
                u.currentTenant,
                u.pricePerMonth
              );
            });
            return new PropertyListings(
              p.id,
              units,
              p.name,
              "https://raw.githubusercontent.com/adrianhajdin/projects_realestate/main/assets/images/house.jpg",
              p.phoneNumber,
              p.contact,
              p.lat,
              p.long,
              p.manager
            );
          });
          return {
            propertyListings,
          };
        case "ApplicationErrors":
          return {
            msg: data.myListings.errorMessage,
          };
        default:
          throw new Error("unImplemented responce type");
      }
    }
  }

  async signin(
    email: string,
    password: string
  ): Promise<{ msg?: string; payload?: User } | undefined> {
    const { data, errors } = await client.mutate({
      mutation: SignInQuery,
      variables: {
        email,
        password,
      },
    });
    if (errors) {
      alert(errors[0].message);
    }
    switch (data.signin.__typename) {
      case "InvalidCredentials":
        return { msg: data.signin.msg };
      case "SignInResponse":
        localStorage.setItem("token", data.signin.token);
        localStorage.setItem("refreshToken", data.signin.refreshToken);
        localStorage.setItem("user", JSON.stringify(data.signin.user));
        const user = new User(
          data.signin.user.name,
          data.signin.user.email,
          "https://randomuser.me/api/portraits/thumb/men/75.jpg",
          data.signin.user.phoneNumber || "1234567",
          data.signin.user.role,
          data.signin.user.placementDate,
          data.signin.user.accountState
        );
        return {
          payload: user,
        };

      default:
        break;
    }
  }
  async signup(user: UserDTO): Promise<{ msg: string }> {
    return {
      msg: "User registered successfully",
    };
  }
  isAuth(): boolean {
    return localStorage.getItem("token") ? true : false;
  }
  signout(): boolean {
    try {
      localStorage.clear();
      return true;
    } catch (e: any) {
      console.log(e);
      return false;
    }
  }
}

const amm = [
  "https://raw.githubusercontent.com/adrianhajdin/projects_realestate/main/assets/images/house.jpg",
  "https://raw.githubusercontent.com/adrianhajdin/projects_realestate/main/assets/images/house.jpg",
  "https://raw.githubusercontent.com/adrianhajdin/projects_realestate/main/assets/images/house.jpg",
  "https://raw.githubusercontent.com/adrianhajdin/projects_realestate/main/assets/images/house.jpg",
];
