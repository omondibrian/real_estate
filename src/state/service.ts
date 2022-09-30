import { PropertyListings, Unit } from "./entities/PropertyListings";
import { User } from "./entities/user";

export class DashBoardService {
  fetchUserData = async (id: string): Promise<User> => {
    return new User(
      "Courtney Henry",
      "https://randomuser.me/api/portraits/thumb/men/75.jpg",
      "25412345678",
      "Property Manager",
      "6 August 2022",
      true
    );
  };
  getPropertyListings = async (id: string): Promise<PropertyListings> => {
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
  };

  authenticate = async (
    email: string,
    password: string
  ): Promise<{
    msg: string;
    token: string;
  }> => {
    return {
      msg: "User Authenticated successfully",
      token: "jhfjlkdhfldjkfhjdkhfldjkh",
    };
  };

  registerNewUser = async (
    user: User
  ): Promise<{
    msg: string;
  }> => {
    return {
      msg: "User registered successfully",
    };
  };
}
