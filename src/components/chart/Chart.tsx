import React, { Fragment, useState } from "react";
import { Bar } from "react-chartjs-2";
import { Listbox, Transition } from "@headlessui/react";
import {
  ChevronUpDownIcon,
  CheckIcon,
  WalletIcon,
  EnvelopeIcon,
  CurrencyDollarIcon,
  CalendarDaysIcon,
} from "@heroicons/react/20/solid";
import {
  Chart as ChartJS,
  CategoryScale,
  LinearScale,
  BarElement,
  Title,
  Tooltip,
  Legend,
} from "chart.js";

const info = {
  stockFullName: "SW Limited.",
  stockShortName: "ASX:SFW",
  price: {
    current: 2.32,
    open: 2.23,
    low: 2.215,
    high: 2.325,
    cap: 93765011,
    ratio: 20.1,
    dividend: 1.67,
  },
  chartData: {
    labels: ["January", "February", "March", "April", "May", "June", "July"],
    data: [200, 230, 270, 295, 345, 327, 218, 219],
  },
};

ChartJS.register(
  CategoryScale,
  LinearScale,
  BarElement,
  Title,
  Tooltip,
  Legend
);
function Chart() {
  const options = {
    responsive: true,
    plugins: {
      legend: {
        display: false,
      },
    },
    scales: {
      yAxes: {
        ticks: {
          color: "rgba(0,0,0, 1)",
        },
        grid: {
          display: false,
          drawBorder: false,
        },
      },

      xAxes: {
        ticks: {
          color: "rgba(0,0,0, 1)",
        },
        grid: {
          circular: true,
          borderColor: "rgba(255, 255, 255, .2)",
          color: "rgba(255, 255, 255, .2)",
          borderDash: [5, 5],
        },
      },
    },
    layout: {
      padding: {
        right: 10,
      },
    },
  };

  const data = buildData(info);

  return (
    <div className="  p-6 max-w-2xl  bg-white rounded-lg border border-gray-200 shadow-md dark:bg-gray-800 dark:border-gray-700">
      <div className="flex flex-row  ">
        <div className="font-semibold py-2 mr-12">Earning Trends </div>
        <Toggle
          style="peer-focus:ring-purple-400 peer-checked:bg-purple-600"
          lable="income"
        />

        <Toggle
          style="peer-focus:ring-green-300 peer-checked:bg-green-600"
          lable="Express"
        />
        <RangeSelector />
      </div>
      <hr className="my-3" />
      <div className=" flex flex-row  ml-2 text-sm text-gray-400 items-center  font-medium">
        <CalendarDaysIcon height={"20px"} width="20px" />
        <div className="ml-2"> Jan 1,2022 - Dec 31,2022</div>
      </div>
      <div className="flex flex-row">
        <div className="flex-col grow-[2]">
          <Bar options={options} data={data} />
        </div>
        <div className="flex-col grow-0 ">
          <RevenueStats
            label="Avg monthly income"
            value="$ 4,328.30"
            styles="bg-purple-600"
          >
            <CurrencyDollarIcon />
          </RevenueStats>

          <RevenueStats
            label="Total income "
            value="$ 85,328.30"
            styles="bg-green-400"
          >
            <WalletIcon />
          </RevenueStats>

          <RevenueStats
            label="Total Expenses "
            value=" $ 4,328.30"
            styles="bg-orange-400"
          >
            <EnvelopeIcon />
          </RevenueStats>
        </div>
      </div>
    </div>
  );
}

export default Chart;
interface params {
  chartData: { labels: any; data: any };
}
const buildData = ({ chartData }: params) => ({
  labels: chartData.labels,
  datasets: [
    {
      label: "",
      data: chartData.data,
      backgroundColor: "rgba(147,51,234, 1)",
      // borderColor: "rgba(255, 255, 255, 1)",
      // pointBackgroundColor: "rgba(255, 255, 255, 1)",
      // fill: "start",
      // tension: 0.4,
    },
  ],
});

const displayRange = [{ name: "Monthly" }, { name: "Yearly" }];

function RangeSelector() {
  const [selected, setSelected] = useState(displayRange[0]);

  return (
    <Listbox value={selected} onChange={setSelected}>
      <div className="relative ">
        <Listbox.Button className="relative w-full cursor-default rounded-lg bg-white  py-2 pl-3 pr-10 text-left shadow-md focus:outline-none focus-visible:border-indigo-500 focus-visible:ring-2 focus-visible:ring-white focus-visible:ring-opacity-75 focus-visible:ring-offset-2 focus-visible:ring-offset-orange-300 sm:text-sm">
          <span className="block truncate">{selected.name}</span>
          <span className="pointer-events-none absolute inset-y-0 right-0 flex items-center pr-2">
            <ChevronUpDownIcon
              className="h-5 w-5 text-gray-400"
              aria-hidden="true"
            />
          </span>
        </Listbox.Button>
        <Transition
          as={Fragment}
          leave="transition ease-in duration-100"
          leaveFrom="opacity-100"
          leaveTo="opacity-0"
        >
          <Listbox.Options className="absolute mt-1 max-h-60 w-full overflow-auto rounded-md bg-white py-1 text-base shadow-lg ring-1 ring-black ring-opacity-5 focus:outline-none sm:text-sm">
            {displayRange.map((r, indx) => (
              <Listbox.Option
                key={indx}
                className={({ active }) =>
                  `relative cursor-default select-none py-2 pl-10 pr-4 ${
                    active ? "bg-amber-100 text-amber-900" : "text-gray-900"
                  }`
                }
                value={r}
              >
                {({ selected }) => (
                  <>
                    <span
                      className={`block truncate ${
                        selected ? "font-medium" : "font-normal"
                      }`}
                    >
                      {r.name}
                    </span>
                    {selected ? (
                      <span className="absolute inset-y-0 left-0 flex items-center pl-3 text-amber-600">
                        <CheckIcon className="h-5 w-5" aria-hidden="true" />
                      </span>
                    ) : null}
                  </>
                )}
              </Listbox.Option>
            ))}
          </Listbox.Options>
        </Transition>
      </div>
    </Listbox>
  );
}

interface ToggleProps {
  style: string;
  lable: string;
}

function Toggle(props: ToggleProps) {
  const [enabled, setEnabled] = useState(false);

  return (
    <div className="flex ml-8 py-2">
      <label className="inline-flex  relative items-center mr-5 cursor-pointer">
        <input
          type="checkbox"
          className="sr-only peer "
          checked={enabled}
          readOnly
        />
        <div
          onClick={() => {
            setEnabled(!enabled);
          }}
          className={
            "w-11 h-6  bg-gray-200 rounded-full peer peer-checked:after:translate-x-full peer-checked:after:border-white after:content-[''] after:absolute after:top-0.5 after:left-[2px] after:bg-white after:border-gray-300 after:border after:rounded-full after:h-5 after:w-5 after:transition-all " +
            props.style
          }
        ></div>
        <span className=" ml-2 text-sm text-gray-400  font-medium">
          {props.lable}
        </span>
      </label>
    </div>
  );
}

interface RevenueProps {
  label: string;
  value: string;
  children: any;
  styles: string;
}
function RevenueStats(props: RevenueProps) {
  return (
    <div className="flex  items-end  mr-0">
      <div className="flex mt-3 ">
        
        <div
          className={
            "rounded-full w-8 h-8 text-center text-white p-1 mr-3 " +
            props.styles
          }
        >
          {props.children}
        </div>
        <div>
          <div className="text-lg text-gray-700  font-bold ">{props.value}</div>
          <div className="text-sm text-gray-400  font-medium ">
            {props.label}
          </div>
        </div>
      </div>
    </div>
  );
}
