export class User {
  private _profileImageFile?: File | undefined;

  constructor(
    private readonly _name: string,
    private readonly _profileImage: string,
    private readonly _phoneNumber: string,
    private readonly _role: string,
    private readonly _placementDate: string,
    private readonly _accountState: boolean
  ) {}
  public get accountState(): boolean {
    return this._accountState;
  }
  public get name(): string {
    return this._name;
  }
  public get profileImage(): string {
    return this._profileImage;
  }
  public get phoneNumber(): string {
    return this._phoneNumber;
  }
  public get role(): string {
    return this._role;
  }
  public get placementDate(): string {
    return this._placementDate;
  }

  public get profileImageFile(): File | undefined {
    return this._profileImageFile;
  }
  public set profileImageFile(value: File | undefined) {
    this._profileImageFile = value;
  }
}
