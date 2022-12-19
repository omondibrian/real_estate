import { UnitState } from "../types";
import { User } from "./user";

/**
 * @desc stores all the properties listed in the platform for the particular owner
 */
export class PropertyListings {
  constructor(
    readonly id: string,
    private readonly _listings: Array<Unit>,
    readonly name: string,
    readonly imageUrl: string,
    readonly phoneNumber: string,
    readonly contact: string,
    readonly lat: number,
    readonly long: number,
    readonly manager: {
      id: string;
      user: User;
    }
  ) {}
  public get listings(): Array<Unit> {
    return this._listings;
  }
}
/**
 * @desc stores info about each rental unit available
 */
export class Unit {

  constructor(
    private readonly _id: string,
    private readonly _room: string,
    private readonly _state: string,
    private readonly _customerName: string,
    private readonly _customerId: string,
    private readonly _livingSpace: string,
    private readonly _ammenities: Array<string>,
    private readonly _propertyOverview: Array<string>,
    private readonly _tenant: ITenant,
    private readonly _pricePerMonth: string,

  ) {}

  public get pricePerMonth(): string {
    return this._pricePerMonth;
  }

  public get tenant(): ITenant {
    return this._tenant;
  }
  public get propertyOverview(): Array<string> {
    return this._propertyOverview;
  }
  public get ammenities(): Array<string> {
    return this._ammenities;
  }
  public get livingSpace(): string {
    return this._livingSpace;
  }
  public get customerId(): string {
    return this._customerId;
  }
  public get customerName(): string {
    return this._customerName;
  }
  public get state(): string {
    return this._state;
  }
  public get room(): string {
    return this._room;
  }
  public get id(): string {
    return this._id;
  }
}

export interface ITenant {
  id: string;
  user: {
    id: string;
    name: string;
    email: string;
    profileImage: string;
    placementDate: string;
    accountState: true;
    phoneNumber: string;
  };
}

export interface IUnit {
  expanded: boolean;
  imageUrl: string;
  noProperties: string;
  noRequest: string;
  noTenants: string;
  propertyTitle: string;
  pill: { color: string; label: string };
  info: {
    roomName: string;
    livingSpace: string;
    noRooms: string;
    propertyOverview: Array<string>;
    equipments: Array<string>;
    tenantInfo: {
      name: string;
      contact: string;
      placementDate: string;
      pricePerMonth: string;
      profileUrl: string;
      status: UnitState;
      onClick?: () => void;
    };
    documents: {
      contractUrl: string;
      receiptsUrl: string;
    };
  };
}
