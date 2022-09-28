import React from "react";
interface PropertyProps {
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
 * shows pictures for a particular property
 */
export const Property = (props: PropertyProps) => {
  return (
    <div className="bg-gray-200 h-screen flex items-center justify-center">
      <div className="bg-white w-96 p-5">
        <div className="font-semibold">Equipment </div>

        <div className="mt-3 flex flex-wrap gap-3">
          <button className="bg-gray-200 hover:bg-gray-300 duration-300 rounded-full px-4 py-2 font-normal text-sm">
            Guest toilet
          </button>

          <button className="bg-gray-200 hover:bg-gray-300 duration-300 rounded-full px-4 py-2 font-normal text-sm">
            Suitable for flat sharing
          </button>

          <button className="bg-gray-200 hover:bg-gray-300 duration-300 rounded-full px-4 py-2 font-normal text-sm">
            Fitted kitchen 
          </button>

          <button className="bg-gray-200 hover:bg-gray-300 duration-300 rounded-full px-4 py-2 font-normal text-sm">
            Stepless acess
          </button>

          <button className="bg-gray-200 hover:bg-gray-300 duration-300 rounded-full px-4 py-2 font-normal text-sm">
            GardenSharing
          </button>

          <button className="bg-gray-200 hover:bg-gray-300 duration-300 rounded-full px-4 py-2 font-normal text-sm">
          Stepless acess
          </button>
        </div>
      </div>
    </div>
  );
};
