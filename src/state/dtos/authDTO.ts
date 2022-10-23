export class AuthCredentials {
  constructor(private email: string, private readonly password: string) {}
  getPayload = () => {
    return {
      email: this.email,
      password: this.password,
    };
  };

  public static initial = () => new AuthCredentials("", "");
}
