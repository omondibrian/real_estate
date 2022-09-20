import React from "react";
import {
  BaseCard,
  CardArc,
  CardArcPath,
  CardDescription,
  CardHeader,
  CardImage,
  CardOverlay,
  CardStatus,
  CardThumbNail,
  CardTitle,
} from "./styles";

interface CardProps {
  backgroundColor?: string;
  /**
   * How large should the button be?
   */
  orientation?: "horizontal" | "vetical";
  /**
   * Button contents
   */
  label: string;
  /**
   * Optional click handler
   */
  onClick?: () => void;
}

/**
 * card component
 */
export const Card = ({ label }: CardProps) => {
  return (
    <BaseCard>
      <CardImage src="https://i.imgur.com/oYiTqum.jpg" alt="property-listing" />
      <CardOverlay>
        <CardHeader>
          <CardArc xmlns="http://www.w3.org/2000/svg">
            <CardArcPath/>
          </CardArc>
          <CardThumbNail src="https://i.imgur.com/7D7I6dI.png" alt="property listing" />
          <div className="card-header-text">
            <CardTitle>Jessica Parker</CardTitle>
            <CardStatus>1 hour ago </CardStatus>
          </div>
        </CardHeader>
        <CardDescription>
          Lorem ipsum dolor sit amet consectetur adipisicing elit. Nulla
          similique eius nobis.
        </CardDescription>
      </CardOverlay>
    </BaseCard>
  );
};
