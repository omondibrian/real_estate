/**
 * @desc stores all the properties listed in the platform for the particular owner
 */
export class PropertyListings {
  constructor(private readonly _listings: Array<Unit>) {}
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
    private readonly _ammenities: Array<string>
  ) {}
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
