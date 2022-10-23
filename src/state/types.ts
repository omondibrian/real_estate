import { User } from "./entities/user";

export enum StatusLable {
  completed = "Task completed",
  new = " New Task",
}

export enum UnitState {
  active = "Active",
  inactive = "InActive",
}

export type ActionMap<M extends { [index: string]: any }> = {
  [Key in keyof M]: M[Key] extends undefined
    ? {
        type: Key;
      }
    : {
        type: Key;
        payload: M[Key];
      };
};

export interface IStats {
  labels: Array<string>;
  data: Array<number>;
}

export type AnalyticalData = {
  monthly: {
    stats: {
      labels: string[];
      data: number[];
    };
    rangeInfo: string;
    avgMonthlyIncome: string;
    totalMonthlyIncome: string;
    totalMonthlyExpenses: string;
  };
  yearly: {
    stats: {
      labels: string[];
      data: number[];
    };
    rangeInfo: string;
    avgYearlyIncome: string;
    totalYearlyIncome: string;
    totalYearlyExpenses: string;
  };
};

export type TrendItem = {
  updatedTrend: boolean;
  percentage: number;
  totalUnits: number;
};

export type PropertyTrendsData = {
  occupiedUnits: OccupiedTrendItem;
  vaccantUnits: TrendItem;
  maintenance: TrendItem;
};

interface OccupiedTrendItem extends TrendItem {
  tenatsProfileImgs: Array<string>;
}

export enum TaskLabelTag {
  request = "Request",
  question = "Question",
  damageReport = "Damage Report",
}

export interface IMessage {
  open?: boolean;
  createdAt: string;
  subject: string;
  senderId: string;
  receipientId: string;
  message: string;
  tag: TaskLabelTag;
}

export interface IModalState<V>{
  view?: V;
  data?:any;
  isOpen:boolean
}

export interface IMessageData {
  user: {
    name: string;
    email: string;
    profileImage: string;
    timestamp: string;
    propertyName: string;
    roomName: string;
    style?: string;
  };
  messages: Array<IMessage>;
}
export interface ForgotPasswordUserInput {
  email: string;
}
export type FormSteps = 'Email' | 'Token' | 'Password';
export interface ResetPasswordState{
  errors: any,
  loading:boolean,
  formStep:FormSteps,
  data:{
    token:string,
    email: string,
    password: string,
    message:string,
  }
}
export interface ResetPasswordUserInput {
  email: string;
  token: string;
  password: string;
}

export interface VerifyForgotPasswordUserInput {
  token: string;
  email: string;
}

export interface ChangePasswordUserInput {
  oldPassword: string;
  newPassword: string;
}

export type ModalViews = 'success' | 'error' | 'warning' | 'forgotpass' 
export interface AppState {
  modal:IModalState<ModalViews>;
  passwordReset:ResetPasswordState;
  user?: User;
  error?: string;
  loading: boolean;
  requests: Array<{
    amount: string;
    name: string;
    profileImage: string;
    timestamp: string;
    statusLable: StatusLable;
    taskId: string;
    taskLabel: string;
    taskName: string;
    state: boolean;
    color?: string;
  }>;
  transcations: Array<{
    amount: string;
    name: string;
    profileImage: string;
    timestamp: string;
  }>;
  unit: {
    expanded: boolean;
    imageUrl: string;
    noProperties: string;
    noRequest: string;
    noTenants: string;
    propertyTitle: string;
    info: {
      roomName: string;
      livingSpace: string;
      noRooms: string;
      propertyOverview: [string, string, string, string];
      equipments: Array<string>;
      tenantInfo: {
        name: string;
        contact: string;
        placementDate: string;
        pricePerMonth: string;
        profileUrl: string;
        status: UnitState;
        onClick: () => void;
      };
      documents: {
        contractUrl: string;
        receiptsUrl: string;
      };
    };
  };
  properties: Array<{
    expanded: boolean;
    imageUrl: string;
    noProperties: string;
    noRequest: string;
    noTenants: string;
    propertyTitle: string;
    propertyList: Array<{
      room: string;
      pill: {
        color: string;
        label: string;
      };
      customerName: string;
      livingSpace: string;
    }>;
  }>;
  analytics: {
    income: AnalyticalData;
    expenses: AnalyticalData;
    propertTrend: PropertyTrendsData;
  };
  inbox: Array<IMessageData>;
}
