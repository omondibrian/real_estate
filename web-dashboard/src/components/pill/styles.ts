import styled from "styled-components";

export const Pill = styled.div<{ backgroundColor?: string }>`
  align-items: center;
  appearance: none;
  background-color: #3EB2FD;
  background-image: linear-gradient(1deg, #4F58FD, #149BF3 99%);
  background-size: calc(100% + 20px) calc(100% + 20px);
  border-radius: 100px;
  border-width: 0;
  box-shadow: none;
  box-sizing: border-box;
  color: #FFFFFF;
  cursor: pointer;
  display: inline-flex;
  font-family: CircularStd,sans-serif;
  font-size: 1rem;
  height: auto;
  justify-content: center;
  line-height: 1.5;
  padding: 3px 20px;
  position: relative;
  text-align: center;
  text-decoration: none;
  transition: background-color .2s,background-position .2s;
  user-select: none;
  -webkit-user-select: none;
  touch-action: manipulation;
  vertical-align: top;
  white-space: nowrap;

  $: hover,focus{
    outline: none;
}
$: hover{
      background-position: -20px -20px;

  }

  $: focus:not(:active){
    box-shadow: rgba(40, 170, 255, 0.25) 0 0 0 .125em;
  }
`;

export const OccupiedBadge = styled.button<{ backgroundColor: string }>`
  background-color: ${(props) => props.backgroundColor};
  border-radius: 100px;
  display: flex;
  color: white;
  cursor: pointer;
  align-items: center;
  font-family: CerebriSans-Regular, -apple-system, system-ui, Roboto, sans-serif;
  padding: 4px 0;
  text-align: center;
  text-decoration: none;
  transition: all 250ms;
  border: 0;
  font-size: 12px;
  user-select: none;
  -webkit-user-select: none;
  touch-action: manipulation;
  $:hover {
    transform: scale(1.05) rotate(-1deg);
  }
`;

export const PillIcon = styled.img`
  max-width: 30px;
  max-height: 30px;
`;
