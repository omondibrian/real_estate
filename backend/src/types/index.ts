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
  token?:string;
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
}


// export type SignInResponse = {
//   message: string!
//   user:IUser!
//   token: String!
//   refreshToken:String!
//   error:String
// }
