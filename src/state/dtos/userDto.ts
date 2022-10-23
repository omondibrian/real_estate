export class UserDTO {
  private _profileImageFile?: File | undefined;

  public get profileImageFile(): File | undefined {
    return this._profileImageFile;
  }
  public set profileImageFile(value: File | undefined) {
    this._profileImageFile = value;
  }

  constructor(
    private readonly _name: string,
    private readonly _email: string,
    private readonly _password: string,
    private readonly _profileImage: string,
    private readonly _phoneNumber: string,
    private readonly _role: string
  ) {}

  toJson = () => {
    return {
      name: this._name,
      email: this._email,
      password: this._password,
      profileImage: this._profileImage,
      phoneNumber: this._phoneNumber,
      role: this._role,
    };
  };

  public static initial = () => new UserDTO("", "", "", "", "", "");
}
