import { useMachine } from "@xstate/react";
import { assign } from "xstate";
import { DashBoardMachine } from "../machine";
import { DashBoardService } from "./service";

const service = new DashBoardService();

export default function useDashboardState() {
  const [state, send] = useMachine(DashBoardMachine, {
    actions: {
      "clear auth tokens": (ctx, event) => {
        console.log("clearing");
      },
      "fetch auth user profile": async (ctx, event) => {
        const user = await service.fetchUserData("1");
        assign({
            user:(_,e)=>user
        })
        return user;
      },
      "fetch property listings": async (ctx, event) => {
        const listing = await service.getPropertyListings("1");
        return listing;
      },
      "naviagate to Auth screen": (ctx, event) => {
        console.log("navigate to login screen");
      },
      "naviagate to main screen": (ctx, event) => {
        
        console.log("navigate to listings");
      },
    },
    guards: {
      "user is not authorized": (ctx, event) => {
        return false;
      },
    },
  });
  send("login");
  return [state, send];
}
