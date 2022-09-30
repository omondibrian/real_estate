import { createMachine } from "xstate";

export const DashBoardMachine =
  /** @xstate-layout N4IgpgJg5mDOIC5QBECGsAWAjA9qgThAAQCyqAxhgJYB2YAdAK40CCjALhjvlQF6QBiADY4otRKAAOOWFXZUcNCSAAeiALQBGAKwAGegA4AnAYBspzQHZdlywBYTAJgA0IAJ6JNAZgP0jmu11Taz07Ly8AXwjXNExcAmIySloGVA4uHn4IYVEcDmVpWXlFZTUEO0tTegCDTQNLfzMvE21XDwRHA216Tr1TY10AyyiY9Gw8QlIKajp6NM5uPkECmTkFJSRVDQMvejsAit1tY+9TI0s2xFtLQzq7Cv3tE0tIkZAaHAg4ZVjxhKnkrNmGwFplICsiutSohHKY7PRdHZHN4jD59ppgpcEJZfKZtBVtMiMQEjI5XqM4hNEtMUnN0ossvQhFRYPIaFB4JtCmsSpsylocfRjrpaqivNoAhYXO5EOKjH5rDj6o07LU3r94pMkjNUvSwRB6BAxpqIBCeRtQPzvD0vBUXkZ8Y5rEYglj8fpzjYjKYvLojA7tOrjVSATq6aClgb8GAAI6MODsTlSVbFC1bBAC3zC0XhCV2KVuwIKr0+v0BoOU-7a2nzDKR+jsMA0VA0RNm1PQjNWLN6HPiyWaaXtKXFhqaB0vcwGCt-LU02a1hngrkpqF8jSOXSOIW98e5gdDmH1Ueog5hUyOOwzk2hlLtteWjewncivf9-ODrFVPEEuH9F4vPiURREAA */
  createMachine({
    tsTypes: {} as import("./machine.typegen").Typegen0,
    context: {
      user: undefined,
      propertyListings: [],
      requests: [],
      tenants: [],
      statistics: [],
    },
    id: "Dashboard Machine",
    initial: "unAuthorized",
    states: {
      unAuthorized: {
        entry: "clear auth tokens",
        exit: "fetch auth user profile",
        on: {
          login: {
            actions: "naviagate to main screen",
            target: "#Dashboard Machine.authorized.listings",
          },
        },
      },
      authorized: {
        initial: "listings",
        states: {
          listings: {
            entry: "fetch property listings",
            description: "stores the state of the property Manager  ",
          },
          dashboard: {},
          requests: {},
          tenants: {},
        },
        always: {
          cond: "user is not authorized",
          target: "unAuthorized",
        },
        on: {
          logout: {
            actions: "naviagate to Auth screen",
            target: "unAuthorized",
          },
        },
      },
    },
  });
