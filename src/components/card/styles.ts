import styled from "styled-components";
import tw from "twin.macro";

export const HorizontalCard = styled.div`
  ${tw`flex flex-col `};

`;
export const HorizontalCardImage = styled.div`
  ${tw` h-full w-full lg:h-48 lg:w-48   lg:mb-0 mb-3`}
`;

export const HorizontalCardBody = styled.div`
  ${tw` flex-none lg:flex  `}
`;


export const HorizontalCardContent = styled.div`
  ${tw`
  flex-auto ml-3 justify-evenly py-1
  `}
`;

export const HorizontalCardTitle = styled.h2`
  ${tw`
  flex-auto text-lg font-medium
  `}
`;
export const HorizontalCardText = styled.div`
${
  tw`
  text-gray-900 font-bold text-xl mb-2
  `
}
`

export const HorizontalCardTextContent = styled.p`
${
  tw`
  text-gray-700 text-base
  `
}
`