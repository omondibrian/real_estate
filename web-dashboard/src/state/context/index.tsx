import { AppState } from "../types";
import React, { createContext, ReactNode, useReducer } from "react";
import { AppActions, appReducer, initialState } from "./appReducer";

export type AppContextType = {
  state: AppState;
  dispatch: React.Dispatch<AppActions>;
};

export const ApplicationStateContext = createContext<AppContextType>({
  state: initialState,
  dispatch: () => {},
});


const ApplicationProvider: React.FC<{ children: ReactNode }> = (props) => {
  const [state, dispatch] = useReducer(appReducer, initialState);
  return (
    <ApplicationStateContext.Provider value={{ state, dispatch }}>
      {props.children}
    </ApplicationStateContext.Provider>
  );
};

export default ApplicationProvider;
