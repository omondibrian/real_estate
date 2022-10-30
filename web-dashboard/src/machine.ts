import { assign, createMachine, DoneInvokeEvent } from "xstate";
import Router from "next/router";
import { AppRoutes } from "./AppRoutes";
import { AppManager } from "./state/service";
import { User } from "./state/entities/user";
import { AuthCredentials } from "./state/dtos/authDTO";
import { UserDTO } from "./state/dtos/userDto";
import { Unit } from "./state/entities/PropertyListings";
const appManager = new AppManager();
export const DashBoardMachine =
  /** @xstate-layout N4IgpgJg5mDOIC5QBECGsAWAjA9qgThAAQCyqAxhgJYB2YAdAK40CCjALhjvlQF6T0w+fN0gBiAEoBRACoSAmgG0ADAF1EoAA45YVdlRw0NIAJ6IAzADYATPQDs5gJzWALHYCMAVneWAHF4AaEAAPRHdrS0d6SLtLcy8ndzsAX2SgtExcAmIySloGZjZObj4BXSgaWjEIQwZaADccAGsGVA4uHlgwAH1GLvwVdSQQbV19Q2NQhF9lehdrR0ckx19Hc2tPRyCzBAXfemsfF3nLZUsXNYdU9PRsPEJSCmo6JlZ2kv4IenLKmjEhET4eiaAA2qHYADNuABbehtYqdHp9ISDYyjPQGIzDKaOZTuehLJwubx2OyOSyeFzbRDWcx2OZxGxnFynfx2XzXEAZO7ZR55F6Fd48T7fKgVKrQnD1MAyHAAZTFNEYmlRw3R4yxoCm3lmyiW7nCngWLic5nM1IQxN18U8llJ4WsZOUKTSXNuWQeuWeBTeCNKXx+yuqtXoDWaDEMHog3ToAHdev1VVodBiJtjEL5ifZPL4HI67LbDpYLabs44c3j3LnzDNzJzuVG+d7XkUOv7RRUgwDuMCwZCYfRI-do3GEyi1GiUxrJmFlJ5ZnZrL5fJ4jbEC54LZ4PGWKwbq-56+7h038i2he3A5oxJLpbKFeKaEmRlPMTOEJZTvQfCtnJsnEam6mIgVr0MoNp2h41iOo4R6ZCeXpnvCbYiiCVCwPoNBQLA9AgngEC0FAwYvGGLT0BCYDsJQAAy6GYdhz7qm+6YIAAtH49JshSergX4njmsB0yuN+qxGuS87sr41hwTynpPEhF6oXRhE4XhqAEVh-zCD2oLglC+CwhRVEYLRGEqYxr5plqiCseu9BcfOuJWCuAk7POLgMlY4GrKsTgujc8G8ohLzIR8AhoWZWGwFpgK9npA5GTRylRRZYzMdZbHmGc9B0ll6zQe4zrhFSgluJYOWRBcNh2MoCx4i4MmNsFrSKeFyXYWIUA4LK3IAELDqlqaaiENkuMo+y5eB0GHEVrgWu45IVY4VWOrVuLuA1roNgh8kha1XwRfR0VdbKEhgAAjowcDsLAg3TixrHhF+k35TNHiuYgq62FYy3kqtdXuI1O38i1fpKZFHUnTgACSNC4MEd3pSNbGHOYByxCs5xLnauYWtBng5VJLKfr4lgbSam0BbJOS7aDKECBAx7ZJ13U4Gdl3XbdE5qpZw1TKxRq2CakTxMoLiZucJU7DVBxHCczJrHaQNBbTcL7fQjOBYQLOyqZR2I1ZyPsT40R2MSexnI4i5SzZXj0rVlLxGsmbOIDW1M3JINq2DDMexAOsw3DOAI9zyZpYb-NeLa9nOFYLLuOYFxJPN25geNHhW2b8TLtJ7tazTXuhcKAj4BdV0YcdrN9QNocvuHfO2-O+Li46lKC2avgWqB4FeJBDrsuSyue82RftqXHMVwHevmbXTER7bepoy3Bbm7SNbzQ6YEQfa0FkkPBcj+r4-lzdAew-DBsN2xCcLXMUkr+36+lfOW+9zvMFu1TTWq6PIq0PDU92pcyGGHIa75WLLVmAnXwNZwJkliHSC0rEYH2BgauBwax5xxDrHnamp49o+y+P-YOAdq7ZEvuA8IdJ7CVXnOsU4EQkELXKucZkdpE4SziPvfBdMwr+zwl1DgFCHreAOGVK2uVJZmi3BSMCtpFweHTgaSmbp848O9vTf2wiMp0n2CsHiK40FkyAjsFc9IIgODNg7Dcm1XQ0BwBAOAxhtoqy9oKQhghtKlwgJOeu74DQbXsjWBaq4xZ4ifjsKwtgMGuA8N4PwXhuHNXPB4n4tBfFgJYvOAmpobQLG8GJExNITSeSZOcVkSQOS4O-m430miOxKk0Bk+6GULizDWLSZaCxxLKGdFuRaFx5yrHLB4fyqi8HJPcZo5pSMpjHFsB0ok3TuJ9MEoVWYLIrAJ3WAtPUsFqnA0Ph4w6KlcL4UIjM+e19CrlQWInP6Y1NhrC3EaUp3lfx+SST-dWJyorkVQFQEEkBLlX0ejcg4awVqPMWB9BANVombH-MuJYZtP7jJqUc+pvzsJnPUsCnmfiHoGmyncqFc4YUWikkvACpNbSDP4l8wuPygEgsoV4DypKHnkueYJM0HlNmnBrB8q2jLMV8I1n7VlRKNr4ltOJUZBY-A2zhVEckcQxoLQLESMZLjh4KQ8cfTmUqMqPTiQSWqxIRbsk-NYeaYt9hznmNYcaq4cyHFFfq+p7AwA0FQDQG6xqjaFQuDlBwtofAKKsHYLcVZvxOGdY6TMicaweoIfU4hUxQEtKDVWcq5JFiUmcOWcasL2KoLGrie+SxTiLFTbw4uXxuz4EDfzDY9JJp+GdWbDVxZBKfnpDYDYxwzZrHJXWjRfCW22wQea1wcrdE2qQUuAmrC7Tmw8GNFcdap3X38PiXEc6rWkxsEgukHlV2LgTtuGYtjkhAA */
  createMachine(
    {
  context: {
    user: {} as User | null,
    propertyListings: [],
    requests: [],
    tenants: [],
    statistics: [],
    authState: {
      credentials: AuthCredentials.initial(),
      registrationData: UserDTO.initial(),
    },
  },
  tsTypes: {} as import("./machine.typegen").Typegen0,
  schema: {
    events: {} as
      | { type: "RETRY" }
      | { type: "moveToSignup" }
      | { type: "moveToSignin" }
      | { type: "goToDashBoard" }
      | { type: "goToRequests" }
      | { type: "goToInbox" }
      | { type: "goToListings" }
      | { type: "logout" },
  },
  id: "Dashboard Machine",
  initial: "unAuthorized",
  states: {
    unAuthorized: {
      entry: "clear_auth_tokens",
      initial: "signin",
      states: {
        errored: {
          on: {
            RETRY: {
              target: "signin",
              actions: "moveTo",
            },
          },
        },
        signin: {
          invoke: {
            src: "AppManager.signin",
            id: "authorise_user",
            onDone: [
              {
                target: "#Dashboard Machine.authorized",
              },
            ],
            onError: [
              {
                target: "errored",
              },
            ],
          },
          on: {
            moveToSignup: {
              target: "signup",
              actions: "moveTo",
            },
          },
        },
        signup: {
          invoke: {
            src: "AppManager.signup",
            id: "onboard_new_user",
            onDone: [
              {
                target: "signin",
              },
            ],
            onError: [
              {
                target: "errored",
              },
            ],
          },
          on: {
            moveToSignin: {
              target: "signin",
              actions: "moveTo",
            },
          },
        },
      },
    },
    authorized: {
      initial: "listings",
      states: {
        listings: {
          description: "stores the state of the property Manager  ",
          invoke: {
            src: "AppManager.fetchListing",
            id: "fetchListings",
            onError: [
              {
                target: "error",
              },
            ],
          },
          initial: "loading",
          states: {
            loading: {
              invoke: {
                src: "AppManager.fetchListing",
                id: "fetchListings",
                onDone: {
                    target: "loaded",
                    actions: assign({
                      propertyListings: (ctx, e:DoneInvokeEvent<Array<Unit>>) => {
                        console.log("fetch data listings = ", e.data);
                        return e.data;
                      },
                    }),
                  },
                
                onError: {
                    target: "failed",
                  },
                
              },
            },
            failed: {},
            loaded: {
              entry: "moveToSignin",
            },
          },
          on: {
            goToDashBoard: {
              target: "dashboard",
              actions: "moveTo",
            },
            goToRequests: {
              target: "requests",
              actions: "moveTo",
            },
            goToInbox: {
              target: "inbox",
              actions: "moveTo",
            },
          },
        },
        dashboard: {
          on: {
            goToRequests: {
              target: "requests",
              actions: "moveTo",
            },
            goToListings: {
              target: "listings",
              actions: "moveTo",
            },
            goToInbox: {
              target: "inbox",
              actions: "moveTo",
            },
          },
        },
        requests: {
          on: {
            goToDashBoard: {
              target: "dashboard",
              actions: "moveTo",
            },
            goToListings: {
              target: "listings",
              actions: "moveTo",
            },
            goToInbox: {
              target: "inbox",
              actions: "moveTo",
            },
          },
        },
        tenants: {},
        inbox: {
          on: {
            goToListings: {
              target: "listings",
              actions: "moveTo",
            },
            goToDashBoard: {
              target: "dashboard",
              actions: "moveTo",
            },
          },
        },
        error: {},
      },
      always: {
        target: "unAuthorized",
        cond: "user is not authorized",
      },
      on: {
        logout: {
          target: "unAuthorized",
          actions: "naviagate to Auth screen",
        },
      },
    },
  },
},
    {
      actions: {
        moveTo: (context, event, meta) => {
          const path =
            event.type === "goToDashBoard"
              ? AppRoutes.DashBoard
              : event.type === "goToInbox"
              ? AppRoutes.Inbox
              : event.type === "goToListings"
              ? AppRoutes.Listings
              : event.type === "moveToSignin"
              ? AppRoutes.signIn
              : event.type === "goToRequests"
              ? AppRoutes.request
              : AppRoutes.signUp;
          Router.push(path);
        },
        clear_auth_tokens: (ctx, event) => {
          appManager.signout();
        },
        "naviagate to Auth screen": () => {
          Router.push(AppRoutes.signIn);
        },
        goToListings:(ctx,event)=>{
          Router.push(AppRoutes.Listings);
        }
      },
      guards: {
        "user is not authorized": () => {
          if (appManager.isAuth()) {
            console.log("is Authorised = %s", appManager.isAuth());
            return false;
          } else {
            Router.push(AppRoutes.signIn);
            return true;
          }
        },
      },
      services: {
        "AppManager.fetchListing": appManager.fetchListings,
        "AppManager.signin": (ctx) =>
          appManager.signin(
            ctx.authState.credentials.getPayload().email,
            ctx.authState.credentials.getPayload().password
          ),
        "AppManager.signup": (ctx) =>
          appManager.signup(ctx.authState.registrationData),
      },
    }
  );
