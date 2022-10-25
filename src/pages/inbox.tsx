import React, { useEffect } from "react";
import Head from "next/head";
import MainLayout from "../Layouts/Main";
import { SearchBar } from "../components/search/search_bar";
import InboxItem from "../components/InboxItem/inbox";
import { Disclosure } from "@headlessui/react";
import { TextArea } from "../components/form/FormInput";
import { ApplicationStateContext } from "../state/context";
import { IAppActionTypes } from "../state/context/appReducer";
import { IMessageData, TaskLabelTag } from "../state/types";
import { MessageFilter } from "../components/filter/message_filter";

const filterMsgs = (msgs: Array<IMessageData>, query: string) => {
  if (query === "all") return msgs;
  const tag =
    query === "request"
      ? TaskLabelTag.request
      : query === "damage"
      ? TaskLabelTag.damageReport
      : TaskLabelTag.question;
  return msgs.filter((mb) => mb.messages[mb.messages.length - 1].tag.valueOf() === tag.valueOf());
};
export default function Inbox() {
  const { state, dispatch } = React.useContext(ApplicationStateContext);
  const [msgId, setMessageId] = React.useState<number>(1);
  const [filterType, setFilter] = React.useState("all");
  const [messages, setMsg] = React.useState<Array<IMessageData>>([]);

  useEffect(()=>{
       setMsg(filterMsgs(state.inbox, filterType));
       console.log(messages)
  },[filterType])

  useEffect(() => {
    dispatch({
      type: IAppActionTypes.FETCH_INBOX,
      payload: "",
    });
   
  }, []);
  return (
    <MainLayout>
      <Head>
        <title>Inbox</title>
        <link rel="icon" href="/favicon.ico" />
      </Head>
      <div className="flex flex-row ">
        <div className="flex flex-col h-screen w-96 z-10 bg-white px-3">
          <div className="font-bold  text-start mt-3 text-lg z-20 mb-10">
            Messages
          </div>
          <MessageFilter
            label={filterType}
            options="all"
            onClick={(q) => {
              setFilter(q);
              console.log(q);
            }}
          />
          {state.loading ? (
            <div className="flex my-40  items-center justify-center text-blue-500">
              loading ...
            </div>
          ) : (
            <div className="mt-3  overflow-y-auto ">
              {messages.map((m, i) => (
                <InboxItem
                  key={i}
                  name={m.user.name}
                  profileImage={m.user.profileImage}
                  propertyName={m.user.propertyName}
                  roomName={m.user.roomName}
                  style={m.user.style + ""}
                  taskLabel={m.messages[m.messages.length - 1].tag.valueOf()}
                  taskName={m.messages[m.messages.length - 1].subject}
                  timestamp={m.messages[m.messages.length - 1].createdAt}
                  setId={() => {
                    console.log("current msgid = ", i);
                    setMessageId(i);
                  }}
                />
              ))}
            </div>
          )}
        </div>

        <div className="flex flex-col w-[60%] h-screen overflow-y-auto bg-white shadow-md rounded px-8 pt-6 pb-28 mt-20  ml-6">
          {state.loading ? (
            <div className="flex my-28  items-center justify-center text-blue-500">
              No Selected Message
            </div>
          ) : (
            messageContainer({
              messages: state.inbox[msgId].messages
                .slice(0, state.inbox[msgId].messages.length - 1)
                .map((m) => {
                  const { email, name, profileImage } = state.inbox[msgId].user;
                  const tag =
                    m.tag === TaskLabelTag.request
                      ? "request"
                      : m.tag === TaskLabelTag.damageReport
                      ? "damage"
                      : "question";
                  return {
                    ...m,
                    email,
                    userName: name,
                    open: false,
                    imgUrl: profileImage,
                    tag,
                  };
                }),
            })
          )}
          {state.loading ||
          (!state.loading && state.inbox.length < 1) ? null : (
            <MessageItem
              tag={
                state.inbox[msgId].messages[
                  state.inbox[msgId].messages.length - 1
                ].tag === TaskLabelTag.request
                  ? "request"
                  : state.inbox[msgId].messages[
                      state.inbox[msgId].messages.length - 1
                    ].tag === TaskLabelTag.damageReport
                  ? "damage"
                  : "question"
              }
              isVisible={() => false}
              userName={state.inbox[msgId].user.name}
              email={state.inbox[msgId].user.email}
              message={
                state.inbox[msgId].messages[
                  state.inbox[msgId].messages.length - 1
                ].message
              }
              open={true}
              createdAt={
                state.inbox[msgId].messages[
                  state.inbox[msgId].messages.length - 1
                ].createdAt
              }
              subject={
                state.inbox[msgId].messages[
                  state.inbox[msgId].messages.length - 1
                ].subject
              }
              imgUrl={state.inbox[msgId].user.profileImage}
            />
          )}

          <TextArea handleReply={() => console.log("testing")} />
        </div>
      </div>
    </MainLayout>
  );
}
interface MessageProps {
  messages: Array<MessageItemProps>;
}
function messageContainer(props: MessageProps) {
  const msgs = buildMessagePayload(props.messages);
  console.log(msgs);
  return msgs.map((m, i) => (
    <Disclosure as="div" key={i}>
      {({ open }) => (
        <>
          <Disclosure.Button className="flex w-full justify-between rounded-lg pl-2 bg-white  py-2 text-left text-sm font-medium  hover:bg-purple-200 focus:outline-none focus-visible:ring focus-visible:ring-purple-500 focus-visible:ring-opacity-75">
            <div className="flex flex-row item-center mb-5">
              <div>
                <img
                  src={m.imgUrl}
                  alt="tenant image"
                  className={
                    "rounded-full w-8 h-8 mr-2  border-2 " + styles[m.tag]
                  }
                />
              </div>
              <div>
                <div className="font-bold">{m.userName}</div>
                <div className="text-gray-500">{m.email}</div>
              </div>
            </div>
          </Disclosure.Button>
          <Disclosure.Panel className="px-4 pt-4 pb-2 text-sm text-gray-500">
            <MessageItem
              isVisible={() => open}
              userName={m.userName}
              email={m.email}
              message={m.message}
              open={m.open}
              createdAt={m.createdAt}
              subject={m.subject}
              imgUrl={m.imgUrl}
              tag={m.tag}
            />
          </Disclosure.Panel>
        </>
      )}
    </Disclosure>
  ));
}
interface MessageItemProps {
  open: boolean;
  userName: string;
  email: string;
  message: string;
  createdAt: string;
  subject: string;
  imgUrl: string;
  tag: "request" | "damage" | "question";
  isVisible?: () => boolean;
}

const styles = {
  request: "border-green-700",
  damage: "border-orange-700",
  question: "border-purple-700",
};
function MessageItem(props: MessageItemProps) {
  return (
    <div>
      {props.isVisible !== undefined && !props.isVisible() && (
        <div className="flex flex-row item-center mb-5">
          <div>
            <img
              src={props.imgUrl}
              alt="tenant image"
              className={
                "rounded-full w-8 h-8 mr-3  border-2 ml-3 " + styles[props.tag]
              }
            />
          </div>
          <div>
            <div className="font-bold">{props.userName}</div>
            <div className="text-gray-500">{props.email}</div>
          </div>
        </div>
      )}
      <div className="text-gray-500">{props.createdAt}</div>
      <div className="font-bold mt-3 mb-4">{props.subject}</div>
      <p className="text-gray-500 my-3">{props.message}</p>
    </div>
  );
}

const msgArr = {
  users: [
    {
      name: "Bessie Copper",
      profileImage: "https://randomuser.me/api/portraits/thumb/men/75.jpg",
      timestamp: "Today,8:09 PM",
      propertyName: "Block D",
      roomName: "8th floor,Number 4",
      taskName: "Electricity Problem",
      taskLabel: "Question",
      style: "text-green-800 bg-green-100",
    },
    {
      name: "Bessie Copper",
      profileImage: "https://randomuser.me/api/portraits/thumb/men/75.jpg",
      timestamp: "Today,8:09 PM",
      propertyName: "Block D",
      roomName: "8th floor,Number 4",
      taskName: "Electricity Problem",
      taskLabel: "Request",
      style: "text-purple-200 bg-purple-800",
    },
    {
      name: "Bessie Copper",
      profileImage: "https://randomuser.me/api/portraits/thumb/men/75.jpg",
      timestamp: "Today,8:09 PM",
      propertyName: "Block D",
      roomName: "8th floor,Number 4",
      taskName: "Electricity Problem",
      taskLabel: "Damage Report",
      style: "text-orange-800 bg-orange-100",
    },
    {
      name: "Bessie Copper",
      profileImage: "https://randomuser.me/api/portraits/thumb/men/75.jpg",
      timestamp: "Today,8:09 PM",
      propertyName: "Block D",
      roomName: "8th floor,Number 4",
      taskName: "Electricity Problem",
      taskLabel: "Request",
      style: "text-purple-200 bg-purple-800",
    },
    {
      name: "Bessie Copper",
      profileImage: "https://randomuser.me/api/portraits/thumb/men/75.jpg",
      timestamp: "Today,8:09 PM",
      propertyName: "Block D",
      roomName: "8th floor,Number 4",
      taskName: "Electricity Problem",
      taskLabel: "Request",
      style: "text-orange-800 bg-orange-100",
    },
    {
      name: "Bessie Copper",
      profileImage: "https://randomuser.me/api/portraits/thumb/men/75.jpg",
      timestamp: "Today,8:09 PM",
      propertyName: "Block D",
      roomName: "8th floor,Number 4",
      taskName: "Electricity Problem",
      taskLabel: "Request",
      style: "text-purple-200 bg-purple-800",
    },
    {
      name: "Bessie Copper",
      profileImage: "https://randomuser.me/api/portraits/thumb/men/75.jpg",
      timestamp: "Today,8:09 PM",
      propertyName: "Block D",
      roomName: "8th floor,Number 4",
      taskName: "Electricity Problem",
      taskLabel: "Request",
      style: "text-orange-800 bg-orange-100",
    },
  ],
  messages: [
    {
      open: false,
      userName: "john oe",
      email: "example@gmail.com",
      message:
        "Lorem ipsum, dolor sit amet consectetur adipisicing elit. Natus inventore, non maiores praesentium, eaque dignissimos alias commodi ratione reiciendis voluptatibus ut, atque illo modi iure quod a culpa  sapiente officia!",
      createdAt: "Today 14 Jan, 2021",
      subject: "Water damage",
    },
    {
      open: false,
      userName: "john oe",
      email: "example@gmail.com",
      message:
        "Lorem ipsum, dolor sit amet consectetur adipisicing elit. Natus inventore, non maiores praesentium, eaque dignissimos alias commodi ratione reiciendis voluptatibus ut, atque illo modi iure quod a culpa  sapiente officia!",
      createdAt: "Today 14 Jan, 2021",
      subject: "Water damage",
    },
    {
      open: false,
      userName: "john oe",
      email: "example@gmail.com",
      message: "last test",
      createdAt: "Today 14 Jan, 2021",
      subject: "Water damage",
    },
  ],
};

function buildMessagePayload(msgArr: Array<MessageItemProps>) {
  const lastElmIndex = msgArr.length - 1;
  return msgArr.map((m, i) => {
    if (i === lastElmIndex) {
      m.open = true;
    }
    return m;
  });
}
