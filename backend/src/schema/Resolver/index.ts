import merge from 'lodash.merge'
import { messageResolver } from './messages_resolver';
import { PropertyResolver } from './property_resolver';
import { UserResolver } from './user_resolver'

export const resolvers = merge({},UserResolver,PropertyResolver,messageResolver);