import { gql } from "@apollo/client";

export const SignUpQuery = gql`
  mutation RegisterNewUser(
    $name: String!
    $email: String!
    $file: Upload!
    $pNumber: String!
    $password: String!
    $state: Boolean!
    $role: String!
  ) {
    signUp(
      name: $name
      email: $email
      profileImage: $file
      role: $role
      phoneNumber: $pNumber
      password: $password
      accountState: $state
    ) {
      __typename
      ... on DefaultResponse {
        message
      }
      ... on ApplicationErrors {
        errorMessage
      }
    }
  }
`;


 export const SignInQuery = gql`
 mutation SignIn($email: String!, $password: String!) {
  signin(email: $email, password: $password) {
    __typename
    ... on SignInResponse {
      message
      token
      refreshToken
      user {
        id
        email
        profileImage
        name
        placementDate
        accountState
        phoneNumber
        role
      }
    }
    ... on AccountNotActive {
      __typename
      message
      userID
    }
    ... on InvalidCredentials {
      __typename
      msg
    }
  }
}

`;


export const passwordReset = gql`
    mutation passwordReset($email: String!) {
    forgotPassword(email: $email) {
        __typename
        ... on DefaultResponse {
        message
        }
        ... on ApplicationErrors {
        errorMessage
        }
    }
    }
`;


export const otpVerification = gql`
query VerifyOtpToken($otp: String!) {
  verifyToken(token: $otp) {
     __typename
    ... on OTPResponse {
      message
      token
    }
    ... on ApplicationErrors {
      errorMessage
      stack
    }
  }
}
`;

export const fetchProfile = gql`
    query FetchProfile {
    fetchProfile {
        __typename
        ... on User {
        accountState
        email
        name
        placementDate
        profileImage
        role
        phoneNumber
        }
        ... on ApplicationErrors {
        errorMessage
        }
    }
    }
`;

export const updateProfile = gql`
    mutation ProfileUpdate($file:Upload,$pass:String){
    updateProfile(password:$pass,profileImage:$file){
        __typename
    ... on User {
        accountState
        email
        name
        placementDate
        profileImage
        role
        phoneNumber
        }
        ... on ApplicationErrors{
        errorMessage
        }
    }
    }
`;

export const myListings = gql`
    query MyListings{
      myListings {
          __typename
        ... on ListingsPayload {
          message
          properties {
            id
            name
            imageUrl
            phoneNumber
            contact
            lat
            long
            manager {
              id
              user {
                id
                name
                email
                profileImage
                role
                placementDate
                accountState
                phoneNumber
              }
            }
            propertyUnits {
              id
              room
              imageUrl
              contact
              state
              livingSpace
              ammenities
              propertyId
              propertyOverview
              pricePerMonth
              currentTenant {
                id,
                user {
                  id
                  name
                  email
                  profileImage
                  placementDate
                  accountState
                  phoneNumber
                }
              }
            }
          }
        }
        ... on ApplicationErrors {
          errorMessage
          stack
        }
      }
    }
`

export const createPropertyListing = gql`
mutation CreateNewPropertyListing(
  $contact: String!
  $lat: Float!
  $long: Float!
  $name: String!
  $phoneNumber: String!
  $imageUrl: Upload!
) {
  createPropertyListing(
    contact: $contact
    lat: $lat
    long: $long
    name: $name
    phoneNumber: $phoneNumber
    imageUrl: $imageUrl
  ) {
    __typename
    ... on PropertyPayload {
      message
      property {
        id
        name
        imageUrl
        phoneNumber
        contact
        lat
        long
        manager {
          id
          user {
            id
            name
            email
            profileImage
            role
            placementDate
            accountState
          }
        }
        propertyUnits {
          id
          room
          imageUrl
          contact
          state
          currentTenant {
            id
            user {
              id
              name
              email
              profileImage
              role
              placementDate
              accountState
            }
          }
          livingSpace
          ammenities
          propertyId
        }
      }
    }
    ... on ApplicationErrors {
      errorMessage
      stack
    }
  }
}


`

export const createNewUnit = gql`
mutation CreateUnit(
  $room: String!
  $imageUrl: Upload!
  $contact: String!
  $propertyId: String!
  $state: Boolean!
  $livingSpace: String!
  $type: String!
  $baths: Int!
  $bedrooms: Int!
  $ammenities: [String]!
  $propertyOverview: [Upload!]!
  $pricePerMonth: String!
) {
  createUnit(
    room: $room
    imageUrl: $imageUrl
    contact: $contact
    propertyId: $propertyId
    state: $state
    livingSpace: $livingSpace
    type: $type
    baths: $baths
    bedrooms: $bedrooms
    ammenities: $ammenities
    propertyOverview: $propertyOverview
    pricePerMonth: $pricePerMonth
  ) {
    __typename
    ... on UnitPayload {
      message
      unit {
        id
        room
        imageUrl
        contact
        state
        
        currentTenant {
          id
          user {
            id
            name
            email
            profileImage
            role
            placementDate
            accountState
          }
        }
        livingSpace
        ammenities
        propertyId
        pricePerMonth
        propertyOverview
      }
    }
    ... on ApplicationErrors {
      errorMessage
      stack
    }
  }
}


`