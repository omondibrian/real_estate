import styled from "styled-components";
const curve = 40;
const surfaceColor = "#fff";

export const CardsContainer = styled.div`
  position: relative;
  display: block;
  height: 100%;
  border-radius: 40px;
  overflow: hidden;
  text-decoration: none;
`;

export const BaseCard = styled.div`
  position: relative;
  display: block;
  height: 100%;
  border-radius: 40px;
  overflow: hidden;
  text-decoration: none;
  max-height: 300px;
  max-width: 300px;
  border-style: solid;
  border-width: 1px;
`;

export const CardImage = styled.img`
  width: 100%;
  height: auto;
`;

export const CardOverlay = styled.div`
  position: absolute;
  bottom: 0;
  left: 0;
  right: 0;
  z-index: 1;
  border-radius: 40px;
  background-color: ${surfaceColor};
  transform: translateY(100%);
  transition: 0.2s ease-in-out;
`;

export const CardHeader = styled.div`
  position: relative;
  display: flex;
  align-items: center;
  gap: 2em;
  padding: 2em;
  border-radius: 40px 0 0 0;
  background-color: ${surfaceColor};
  transform: translateY(-100%);
  transition: 0.2s ease-in-out;
  ${BaseCard}:hover & {
    transform: translateY(0);
  }
`;

export const CardArc = styled.svg`
  width: 80px;
  height: 80px;
  position: absolute;
  bottom: 100%;
  right: 0;
  z-index: 1;
`;

export const CardArcPath = styled.path`
  fill: ${surfaceColor};
  d: path("M 40 80 c 22 0 40 -22 40 -40 v 40 Z");
`;

export const CardThumbNail = styled.img`
  flex-shrink: 0;
  width: 50px;
  height: 50px;
  border-radius: 50%;
`;

export const CardTitle = styled.div`
  font-size: 1em;
  margin: 0 0 0.3em;
  color: #6a515e;
`;

export const CardTagLine = styled.div`
  display: block;
  margin: 1em 0;
  font-family: "MockFlowFont";
  font-size: 0.8em;
  color: #d7bdca;
`;

export const CardStatus = styled.span`
  font-size: 0.8em;
  color: #d7bdca;
`;

export const CardDescription = styled.p`
  padding: 0 2em 2em;
  margin: 0;
  color: #d7bdca;
  font-family: "MockFlowFont";
  display: -webkit-box;
  -webkit-box-orient: vertical;
  -webkit-line-clamp: 3;
  overflow: hidden;
`;
