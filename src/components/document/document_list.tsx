import React from "react";

interface DocumentProps {
  /**
   * Optional click handler
   */
  onClick?: () => void;
  contractUrl:string;
  receiptsUrl:string;
}
/**
 * document component
 * shows the list of documents btwn tenant and the home owner
 */
export const Document = ({contractUrl,receiptsUrl}: DocumentProps) => {
  return (
    <dd className="mt-1 text-sm text-gray-900 sm:col-span-2 sm:mt-0">
      <ul
        role="list"
        className="divide-y divide-gray-200 rounded-md border border-gray-200"
      >
        <li className="flex items-center justify-between py-3 pl-3 pr-4 text-sm">
          <div className="flex w-0 flex-1 items-center">
            <svg
              xmlns="http://www.w3.org/2000/svg"
              fill="none"
              viewBox="0 0 24 24"
              strokeWidth={1.5}
              stroke="currentColor"
              className="w-6 h-6"
            >
              <path
                strokeLinecap="round"
                strokeLinejoin="round"
                d="M19.5 14.25v-2.625a3.375 3.375 0 00-3.375-3.375h-1.5A1.125 1.125 0 0113.5 7.125v-1.5a3.375 3.375 0 00-3.375-3.375H8.25m2.25 0H5.625c-.621 0-1.125.504-1.125 1.125v17.25c0 .621.504 1.125 1.125 1.125h12.75c.621 0 1.125-.504 1.125-1.125V11.25a9 9 0 00-9-9z"
              />
            </svg>

            <span className="ml-2 w-0 flex-1 truncate">receipts</span>
            <DocType type='PDF' styles="text-indigo-800  bg-indigo-200"/>
          </div>
          <div className="ml-4 flex-shrink-0">
            <a
              href={contractUrl}
              className="font-medium text-indigo-600 hover:text-indigo-500"
            >
              <svg
                xmlns="http://www.w3.org/2000/svg"
                fill="none"
                viewBox="0 0 24 24"
                strokeWidth={1.5}
                stroke="currentColor"
                className="w-6 h-6"
              >
                <path
                  strokeLinecap="round"
                  strokeLinejoin="round"
                  d="M9 12.75l3 3m0 0l3-3m-3 3v-7.5M21 12a9 9 0 11-18 0 9 9 0 0118 0z"
                />
              </svg>
            </a>
          </div>
        </li>
        <li className="flex items-center justify-between py-3 pl-3 pr-4 text-sm">
          <div className="flex w-0 flex-1 items-center">
            <svg
              xmlns="http://www.w3.org/2000/svg"
              fill="none"
              viewBox="0 0 24 24"
              strokeWidth={1.5}
              stroke="currentColor"
              className="w-6 h-6"
            >
              <path
                strokeLinecap="round"
                strokeLinejoin="round"
                d="M19.5 14.25v-2.625a3.375 3.375 0 00-3.375-3.375h-1.5A1.125 1.125 0 0113.5 7.125v-1.5a3.375 3.375 0 00-3.375-3.375H8.25m2.25 0H5.625c-.621 0-1.125.504-1.125 1.125v17.25c0 .621.504 1.125 1.125 1.125h12.75c.621 0 1.125-.504 1.125-1.125V11.25a9 9 0 00-9-9z"
              />
            </svg>

            <span className="ml-2 w-0 flex-1 truncate">
              transcation history
            </span>
            <DocType type='xls' styles="text-green-800 bg-green-200"/>
            
          </div>
          <div className="ml-4 flex-shrink-0">
            <a
              href={receiptsUrl}
              className="font-medium text-indigo-600 hover:text-indigo-500"
            >
              <svg
                xmlns="http://www.w3.org/2000/svg"
                fill="none"
                viewBox="0 0 24 24"
                strokeWidth={1.5}
                stroke="currentColor"
                className="w-6 h-6 "
              >
                <path
                  strokeLinecap="round"
                  strokeLinejoin="round"
                  d="M9 12.75l3 3m0 0l3-3m-3 3v-7.5M21 12a9 9 0 11-18 0 9 9 0 0118 0z"
                />
              </svg>
            </a>
          </div>
        </li>
      </ul>
    </dd>
  );
};

interface IDocTypeProps{
  styles: string,type: string
}

export default function DocType(props:IDocTypeProps) {
  return (
    <div
    style={{ paddingTop: " 0.1em", paddingBottom: "0.1rem" }}
    className={"text-xs px-3 py-2  rounded-full "+ props.styles}
  >
    {props.type}
  </div>
  )
}

