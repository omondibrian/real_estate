import { UserDTO } from "./dtos/userDto";
import { PropertyListings, Unit } from "./entities/PropertyListings";
import { User } from "./entities/user";

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
  fetchListings(): Promise<any>;
  signin(
    email: string,
    password: string
  ): Promise<{ msg: string; token: string }>;
  signup(user: UserDTO): Promise<{ msg: string }>;
  isAuth(): boolean;
  signout(): boolean;
  fetchUserData(id: string): Promise<User>;
  getPropertyListings(id: string): Promise<PropertyListings>;
}

export class AppManager implements IAppManager {
  async fetchUserData(id: string): Promise<User> {
    return new User(
      "Courtney Henry",
      "courtney@site.com",
      "https://randomuser.me/api/portraits/thumb/men/75.jpg",
      "25412345678",
      "Property Manager",
      "6 August 2022",
      true
    );
  }
  async getPropertyListings(id: string): Promise<PropertyListings> {
    const units = data.map(
      (u, i) =>
        new Unit(
          i + "",
          u.room,
          u.pill.label,
          u.customerName,
          "1",
          u.livingSpace,
          [
            "Gym",
            "Guest toilet",
            "Suitable for flat sharing",
            "Fitted kitchen",
            "Stepless acess",
            "GardenSharing",
          ]
        )
    );
    return new PropertyListings(units);
  }
  async fetchListings(): Promise<Array<Unit>> {
    const units = data.map(
      (u, i) =>
        new Unit(
          i + "",
          u.room,
          u.pill.label,
          u.customerName,
          "1",
          u.livingSpace,
          [
            "Gym",
            "Guest toilet",
            "Suitable for flat sharing",
            "Fitted kitchen",
            "Stepless acess",
            "GardenSharing",
          ]
        )
    );
    return new PropertyListings(units).listings;
  }
  async signin(
    email: string,
    password: string
  ): Promise<{ msg: string; token: string }> {
    console.log('authenticating user')
    return {
      msg: "User Authenticated successfully",
      token: "jhfjlkdhfldjkfhjdkhfldjkh",
    };
  }
  async signup(user: UserDTO): Promise<{ msg: string }> {
    return {
      msg: "User registered successfully",
    };
  }
  isAuth(): boolean {
    // return localStorage.getItem("AUTH_TOKEN") ? true : false;
    return true;
  }
  signout(): boolean {
    try {
      // localStorage.clear();
      return true;
    } catch (e: any) {
      console.log(e);
      return false;
    }
  }
}
