import React, { useContext } from "react";
import { AccordionNavMenu } from "../../components/accordionMenu";
import { PropertyFilter } from "../../components/filter/filter_tab";
import NavBar from "../../components/Navbar";
import { SearchBar } from "../../components/search/search_bar";
import { SideBar } from "../../components/sideBar/side_bar";
import { ApplicationStateContext } from "../../state/context";
export interface MainLayoutProps {
  children: any;
}
function MainLayout(props: MainLayoutProps) {
  const { state } = useContext(ApplicationStateContext);
  return (
    <div className=" w-full flex  h-screen overflow-hidden  ">
      <NavBar name={state.user?.name!}  profileImage={state.user?.profileImage!} role={state.user?.role!}/>
      <SideBar />
      <div className="h-screen flex-1 overflow-hidden z-10 w-[100%] ">{props.children}</div>
    </div>
  );
}

export default MainLayout;

