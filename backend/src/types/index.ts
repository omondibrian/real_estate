import { FileUpload } from "graphql-upload-ts";

export const Role = {
  PropertyManager: "PropertyManager",
  Tenant: "Tenant",
};

export type Role = typeof Role[keyof typeof Role];
export interface SignUpPayload {
  profileImage: Promise<FileUpload>;
  name: string;
  email: string;
  role: string;
  password: string;
  placementDate: string;
  accountStatus: boolean;
  phoneNumber: string;
}

export interface IUser {
  id?: string;
  name: string;
  email: string;
  role: string;
  token?: string;
  profileImage: string;
  password: string;
  phoneNumber: string;
  placementDate: string;
  accountStatus: boolean;
}

export interface IPropertyManager extends IUser {}

export type ImagePayload = {
  extension?: string | undefined;
  filename: string;
  filePath: string;
  fullPath: string;
  encoding: string;
  mimetype: string;
};

// export type SignInResponse = {
//   message: string!
//   user:IUser!
//   token: String!
//   refreshToken:String!
//   error:String
// }

export type PropertyInput = {
  name: string;
  imageUrl: Promise<FileUpload>;
  phoneNumber: string;
  contact: string;
  lat: number;
  long: number;
};

export type UnitInput = {
  room: string;
  imageUrl: Promise<FileUpload>;
  contact: string;
  state: boolean;
  bedrooms:number;
  baths:number;
  type:UnitType;
  livingSpace: string;
  ammenities: string;
  propertyId: string;
};

export type UnitUpdates = {
  /**
   * name of the current unit
   */
  room: string;
};

export type OccupyRequestInput = {
  unitID: string;
};

export type Tenant = {
  id: string;
  user: IUser;
  lat?: number;
  long?: number;
};

export type PropertyManager = {
  id: string;
  user: IUser;
};
export  enum UnitType {
  Luxurious="Luxurious",
  Normal = "Normal",
  budget = "budget"
}
export type Unit = {
  id: string;
  room: string;
  imageUrl: string;
  contact: string;
  state: boolean;
  currentTenant: Tenant;
  livingSpace: string;
  type:UnitType
  baths: number;
  bedrooms: number;
  ratings: number;
  ammenities: Array<string>;
  propertyId: string;
};

export type Property = {
  id: string;
  name: string;
  imageUrl: string;
  phoneNumber: string;
  contact: string;
  manager: PropertyManager;
  propertyUnits: Array<Unit>;
  lat: number;
  long: number;
};

export type PropertyPayload = {
  property: Property;
  message: string;
};

export type UnitPayload = {
  unit: Unit;
  message: string;
};

export type ApplicationErrors = {
  errorMessage: string;
  stack?: string;
};

export type PropertyResults = PropertyPayload | ApplicationErrors;
export type UnitResults = UnitPayload | ApplicationErrors;
