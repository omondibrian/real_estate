import styled from "styled-components";
import tw from "twin.macro";

export const Form = styled.form`
    max-width: 24rem;
    padding-left: 1rem;
    padding-right: 1rem;
`;

export const SearchInput = styled.input`

  ${
    tw`
    w-full 
    py-3 
    pl-12 
    pr-4 
    text-gray-500 
    border 
    rounded-md 
    outline-none 
    bg-gray-50 
    bg-gray-50
    focus:bg-white 
    focus:border-indigo-600
    `
  }  
  `;
