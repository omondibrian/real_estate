import React from "react";
import { AccordionNavMenu } from "../../components/accordionMenu";
import { PropertyFilter } from "../../components/filter/filter_tab";
import NavBar from "../../components/Navbar";
import { SearchBar } from "../../components/search/search_bar";
import { SideBar } from "../../components/sideBar/side_bar";
export interface MainLayoutProps {
  children: any;
}
function MainLayout(props: MainLayoutProps) {
  return (
    <div className=" w-full flex  h-screen overflow-hidden  ">
      <NavBar {...navData} />
      <SideBar />
      <div className="h-screen flex-1 overflow-hidden z-10 w-[100%] ">{props.children}</div>
    </div>
  );
}

export default MainLayout;

const navData = {
  name: "Courtney Henry",
  role: "Property Manager",
  profileImage: "https://randomuser.me/api/portraits/thumb/men/75.jpg",
};
