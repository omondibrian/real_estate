import React from "react";
interface OnBoardingProps {
  /**
   * list label
   */
  label: string;

  /**
   * Optional click handler
   */
  onClick?: () => void;
}
/**
 * collects onboarding data
 */
export const OnBoarding = (props:OnBoardingProps) => {
  return <div>onBoarding</div>;
};
