import styled from "styled-components";
import tw from "twin.macro";

export const AccordionButton = styled.button`
accordion-button
relative
flex
items-center
w-full
py-4
px-5
text-base text-gray-800 text-left
bg-white
border-0
rounded-none
transition
focus:outline-none
`;

export const AccordionItem = styled.div`
  ${
    tw`
    accordion-item 
    border-l-0 
    border-r-0 
    rounded-none 
    bg-white 
    border 
    border-gray-200
    `
  }  
  `;
