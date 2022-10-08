import React from "react";
interface PropertyProps {
  /**
   * Optional click handler
   */
  onClick?: () => void;

  equipment:Array<string>
}
/**
 * shows pictures for a particular property
 */
export const PropertyEquipment = (props: PropertyProps) => {
  return (
    <div className="bg-white  p-3">
      
      <div className="mt-3 flex flex-wrap gap-2">
        {props.equipment.map((e) => (
          <button className="bg-gray-200 hover:bg-gray-300  text-gray-700  duration-300 rounded-full px-4 py-2 font-normal text-sm">
            {e}
          </button>
        ))}
      </div>
        <div className="text-purple-600 font-semibold ">Show All Amenities</div>
    </div>
  );
};


