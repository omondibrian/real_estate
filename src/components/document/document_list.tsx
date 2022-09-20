import React from "react";

interface DocumentProps {
  /**
   * document title contents
   */
  label: string;
  /**
   * Optional click handler
   */
  onClick?: () => void;
}
/**
 * document component
 * shows the list of documents btwn tenant and the home owner
 */
export const Document = ({label}:DocumentProps) => {
  return <div>{label}</div>;
};
