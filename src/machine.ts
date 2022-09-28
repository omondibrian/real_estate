import {createMachine} from 'xstate';

export const machine = createMachine({
    id: "Dashboard Machine",
    initial: "unAuthorized",
    states:{
        unAuthorized:{},
        authorized:{}
    }
})