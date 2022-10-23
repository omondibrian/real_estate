import styled from "styled-components";
import tw from "twin.macro";

export const LineWrapper = styled.div`
 position: relative;
  :before{
    position: absolute;
    display:block;
    content:"-";
    top:0;
    left:32px;
    z-index: 1;
    border-left: 3px rgba(229,231,235,1) dashed ;
    height:100%;
    width: 3px;
  }

`;
