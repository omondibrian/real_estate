import { User } from "../entities/user";
import {
  ActionMap,
  AppState,
  FormSteps,
  ModalViews,
  StatusLable,
  TaskLabelTag,
  UnitState,
} from "../types";

export const initialState: AppState = {
  loading: false,
  modal: {
    isOpen: false,
    view: undefined,
    data: null,
  },
  passwordReset: {
    data: {
      email: "",
      token: "",
      password: "",
      message:""
    },
    errors: null,
    formStep: "Password",
    loading: false,
  },
  requests: [
    {
      amount: "$ 275.43",
      name: "Bessie Copper",
      profileImage: "https://randomuser.me/api/portraits/thumb/men/75.jpg",
      timestamp: "Today,8:09 PM",
      statusLable: StatusLable.completed,
      taskId: "126",
      taskLabel: "Office Equipment",
      taskName: "Office Equipment",
      // color:"bg-orange-400",
      state: true,
    },
    {
      amount: "$ 275.43",
      name: "Bessie Copper",
      profileImage: "https://randomuser.me/api/portraits/thumb/men/75.jpg",
      timestamp: "Today,8:09 PM",
      statusLable: StatusLable.new,
      taskId: "126",
      taskLabel: "Office West",
      taskName: "Maintenance",
      color: "bg-orange-400",
      state: false,
    },
  ],
  transcations: [
    {
      amount: "$ 275.43",
      name: "Bessie Copper",
      profileImage: "https://randomuser.me/api/portraits/thumb/men/75.jpg",
      timestamp: "July 5 ,2022 - 8:09 PM",
    },
    {
      amount: "$ 275.43",
      name: "Bessie Copper",
      profileImage: "https://randomuser.me/api/portraits/thumb/men/75.jpg",
      timestamp: "July 5 ,2022 - 8:09 PM",
    },
  ],
  unit: {
    expanded: true,
    imageUrl:
      "https://raw.githubusercontent.com/adrianhajdin/projects_realestate/main/assets/images/house.jpg",
    noProperties: "32",
    noRequest: "8",
    noTenants: "10",
    propertyTitle: "Salama Properties ThornBridge Cir,Syrance,conecticut 3564",
    info: {
      roomName: "1st room floor",
      livingSpace: "125 sq m",
      noRooms: "4",
      propertyOverview: [
        "https://raw.githubusercontent.com/adrianhajdin/projects_realestate/main/assets/images/house.jpg",
        "https://raw.githubusercontent.com/adrianhajdin/projects_realestate/main/assets/images/house.jpg",
        "https://raw.githubusercontent.com/adrianhajdin/projects_realestate/main/assets/images/house.jpg",
        "https://raw.githubusercontent.com/adrianhajdin/projects_realestate/main/assets/images/house.jpg",
      ],
      equipments: [
        "Guest toilet",
        "Suitable for flat sharing",
        "Fitted kitchen ",
        "Stepless acess",
        "GardenSharing",
        "Gym",
      ],
      tenantInfo: {
        name: "Janie william ",
        contact: "(254) 555-101",
        placementDate: "6 August 2022",
        pricePerMonth: "$291.23",
        profileUrl:
          "https://images.unsplash.com/photo-1518791841217-8f162f1e1131?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60",
        status: UnitState.active,
        onClick: () => {
          console.log("handling default tenant info message scheme");
        },
      },
      documents: {
        contractUrl: "#",
        receiptsUrl: "#",
      },
    },
  },
  properties: [
    {
      expanded: false,
      imageUrl:
        "https://raw.githubusercontent.com/adrianhajdin/projects_realestate/main/assets/images/house.jpg",
      noProperties: "32",
      noRequest: "8",
      noTenants: "10",
      propertyTitle:
        "Salama Properties ThornBridge Cir,Syrance,conecticut 3564",
      propertyList: [
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
      ],
    },
    {
      expanded: false,
      imageUrl:
        "https://raw.githubusercontent.com/adrianhajdin/projects_realestate/main/assets/images/house.jpg",
      noProperties: "32",
      noRequest: "8",
      noTenants: "10",
      propertyTitle:
        "Salama Properties ThornBridge Cir,Syrance,conecticut 3564",
      propertyList: [
        {
          room: "1th Floor,left,room ",
          pill: {
            color: "#59b73d",
            label: "Occupied",
          },
          customerName: "Janie william",
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
      ],
    },
  ],
  analytics: {
    propertTrend: {
      occupiedUnits: {
        percentage: 53,
        totalUnits: 448,
        updatedTrend: true,
        tenatsProfileImgs: [
          "https://images.unsplash.com/photo-1518791841217-8f162f1e1131?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60",
          "https://images.unsplash.com/photo-1518791841217-8f162f1e1131?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60",
          "https://images.unsplash.com/photo-1518791841217-8f162f1e1131?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60",
          "https://images.unsplash.com/photo-1518791841217-8f162f1e1131?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60",
          "https://images.unsplash.com/photo-1518791841217-8f162f1e1131?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60",
        ],
      },
      vaccantUnits: {
        percentage: 43,
        totalUnits: 346,
        updatedTrend: true,
      },
      maintenance: {
        percentage: 6,
        totalUnits: 52,
        updatedTrend: true,
      },
    },
    income: {
      monthly: {
        stats: {
          labels: [
            "January",
            "February",
            "March",
            "April",
            "May",
            "June",
            "July",
          ],
          data: [200, 230, 270, 295, 345, 327, 218, 219],
        },
        rangeInfo: "Jan 1,2022 - Dec 32,2022",
        avgMonthlyIncome: "4,328.30",
        totalMonthlyIncome: "85,328.30",
        totalMonthlyExpenses: "4,328.30",
      },
      yearly: {
        stats: {
          labels: ["2020", "2021", "2022"],
          data: [85, 328.3, 90, 328.3, 120, 328.3],
        },
        rangeInfo: "Jan 1,2020 - Dec 31,2022",
        avgYearlyIncome: "4,328.30",
        totalYearlyIncome: "285,328.30",
        totalYearlyExpenses: "16,328.30",
      },
    },
    expenses: {
      monthly: {
        stats: {
          labels: [
            "January",
            "February",
            "March",
            "April",
            "May",
            "June",
            "July",
          ],
          data: [200, 230, 270, 295, 345, 327, 218, 219],
        },
        rangeInfo: "Jan 1,2022 - Dec 31,2022",
        avgMonthlyIncome: "4,328.30",
        totalMonthlyIncome: "85,328.30",
        totalMonthlyExpenses: "4,328.30",
      },
      yearly: {
        stats: {
          labels: ["2020", "2021", "2022"],
          data: [85, 328.3, 90, 328.3, 120, 328.3],
        },
        rangeInfo: "Jan 1,2020 - Dec 31,2022",
        avgYearlyIncome: "4,328.30",
        totalYearlyIncome: "85,328.30",
        totalYearlyExpenses: "4,328.30",
      },
    },
  },
  user: new User(
    "Courtney Henry",
    "courtney@site.com",
    "https://images.unsplash.com/photo-1518791841217-8f162f1e1131?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60",
    "(254) 555-101",
    "Property Manager",
    "2 August 2022",
    true
  ),
  inbox: [
    {
      user: {
        name: "Bessie Copper",
        email: "example@gmail.com",
        profileImage: "https://randomuser.me/api/portraits/thumb/men/75.jpg",
        timestamp: "Today,8:09 PM",
        propertyName: "Block D",
        roomName: "8th floor,Number 4",
        style: "text-purple-200 bg-purple-800",
      },
      messages: [
        {
          message:
            "Lorem ipsum, dolor sit amet consectetur adipisicing elit. Natus inventore, non maiores praesentium, eaque dignissimos alias commodi ratione reiciendis voluptatibus ut, atque illo modi iure quod a culpa  sapiente officia!",
          receipientId: "21",
          createdAt: "Today 14 Jan, 2021",
          subject: "Water damage",
          senderId: "12",
          tag: TaskLabelTag.damageReport,
        },
        {
          message:
            "Lorem ipsum, dolor sit amet consectetur adipisicing elit. Natus inventore, non maiores praesentium, eaque dignissimos alias commodi ratione reiciendis voluptatibus ut, atque illo modi iure quod a culpa  sapiente officia!",
          receipientId: "21",
          createdAt: "Today 14 Jan, 2021",
          subject: "Water damage",
          senderId: "12",
          tag: TaskLabelTag.damageReport,
        },
        {
          message: "last test",
          receipientId: "21",
          createdAt: "Today 14 Jan, 2021",
          subject: "Water damage quiz",
          senderId: "12",
          tag: TaskLabelTag.question,
        },
      ],
    },
    {
      user: {
        name: "Janie williams",
        email: "example@gmail.com",
        profileImage:
          "https://images.unsplash.com/photo-1518791841217-8f162f1e1131?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60",
        timestamp: "Today,8:09 PM",
        propertyName: "Block D",
        roomName: "8th floor,Number 3",
        style: "text-purple-200 bg-purple-800",
      },
      messages: [
        {
          message:
            "Lorem ipsum, dolor sit amet consectetur adipisicing elit. Natus inventore, non maiores praesentium, eaque dignissimos alias commodi ratione reiciendis voluptatibus ut, atque illo modi iure quod a culpa  sapiente officia!",
          receipientId: "21",
          createdAt: "Today 14 Jan, 2021",
          subject: "Electricity Problem",
          senderId: "34",
          tag: TaskLabelTag.damageReport,
        },
        {
          message:
            "Due to  the current conditions i was asking when the rents prices will be reviewed",
          receipientId: "21",
          createdAt: "Today 14 Jan, 2021",
          subject: "Rent Pricings",
          senderId: "34",
          tag: TaskLabelTag.question,
        },
        {
          message: "last test",
          receipientId: "21",
          createdAt: "Today 14 Jan, 2021",
          subject: "Water damage",
          senderId: "34",
          tag: TaskLabelTag.damageReport,
        },
      ],
    },
  ],
};

/**
 * @desc all action types available in the application
 */
export enum IAppActionTypes {
  FETCH_STATS = "FETCH_STATS",
  FETCH_PROFILE = "FETCH_PROFILE",
  FETCH_lISTINGS = "FETCH_lISTINGS",
  ADD_LISTING = "ADD_LISTING",
  FETCH_INBOX = "FETCH_INBOX",
  OPEN_MODAL = "OPEN_MODAL",
  CLOSE_MODAL = "CLOSE_MODAL",
  VERIFY_FORGOT_TOKEN = "VERIFY_FORGOT_TOKEN",
  FORGOT_PASSWORD = "FORGOT_PASSWORD",
  RESET_PASSWORD = "RESET_PASSWORD",
  UPDATE_STEP = "UPDATE_STEP",
}
//TODO: add the type of the payload to be passed based  on the action type

export type AppPayload = {
  [IAppActionTypes.ADD_LISTING]: {};
  [IAppActionTypes.FETCH_PROFILE]: {};
  [IAppActionTypes.FETCH_STATS]: {};
  [IAppActionTypes.FETCH_lISTINGS]: {
    userId: string;
  };
  [IAppActionTypes.FETCH_INBOX]: {};
  [IAppActionTypes.OPEN_MODAL]: {
    view: ModalViews;
    data: any;
  };
  [IAppActionTypes.CLOSE_MODAL]: {
    view: ModalViews;
    data: any;
  };
  [IAppActionTypes.FORGOT_PASSWORD]: {};
  [IAppActionTypes.VERIFY_FORGOT_TOKEN]: {};
  [IAppActionTypes.RESET_PASSWORD]: {};
  [IAppActionTypes.UPDATE_STEP]: { step: FormSteps };
};

/**
 * @desc action structure
 */
export type AppActions = ActionMap<AppPayload>[keyof ActionMap<AppPayload>];

/**
 * @desc general app reducer
 */
export const appReducer = (state: AppState, action: AppActions): AppState => {
  switch (action.type) {
    case IAppActionTypes.OPEN_MODAL:
      return {
        ...state,
        modal: {
          view: action.payload.view,
          data: action.payload.data,
          isOpen: true,
        },
      };
    case IAppActionTypes.CLOSE_MODAL:
      return {
        ...state,
        modal: {
          view: undefined,
          data: null,
          isOpen: false,
        },
      };
    case IAppActionTypes.UPDATE_STEP:
      return {
        ...state,
        passwordReset: {
          ...state.passwordReset,
          formStep: action.payload.step,
        },
      };
    case IAppActionTypes.ADD_LISTING:
      //do stuff then
      return state;
    case IAppActionTypes.FETCH_PROFILE:
      //do stuff then
      return state;
    case IAppActionTypes.FETCH_STATS:
      //do stuff then
      return state;
    case IAppActionTypes.FETCH_lISTINGS:
      //do stuff then
      return state;
    case IAppActionTypes.FORGOT_PASSWORD:
      //do stuff then
      return state;
    case IAppActionTypes.VERIFY_FORGOT_TOKEN:
      //do stuff then
      return state;
    case IAppActionTypes.RESET_PASSWORD:
      //do stuff then
      return state;
    case IAppActionTypes.FETCH_INBOX:
      const inbox = state.inbox.map((i) => {
        //fetch from api then

        //assign the styles for each tag
        const tempMsg = i.messages[i.messages.length - 1];
        if (tempMsg.tag === TaskLabelTag.damageReport) {
          i.user.style = "text-orange-800 bg-orange-100";
        } else if (tempMsg.tag === TaskLabelTag.question) {
          i.user.style = "text-white bg-purple-800";
        } else if (tempMsg.tag === TaskLabelTag.request) {
          i.user.style = "text-green-200 bg-green-100";
        }
        return i;
      });
      return {
        ...state,
        inbox,
      };

    default:
      throw new Error("invalid action type passed !!");
  }
};
