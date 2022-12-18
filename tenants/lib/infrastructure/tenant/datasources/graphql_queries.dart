const String regNewUser = r'''
mutation RegisterNewUser(
  $name: String!
  $email: String!
  $profileImage: Upload!
  $pNumber: String!
  $password: String!
  $state: Boolean!
  $role: String!
) {
  signUp(
    name: $name
    email: $email
    profileImage: $profileImage
    role: $role
    phoneNumber: $pNumber
    password: $password
    accountState: $state
  ) {
    __typename
    ... on DefaultResponse{
      message
    }
    ... on ApplicationErrors{
      errorMessage
    }
  }
}
''';

const String signInUser = r'''
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
        role

      }
    }
    ... on AccountNotActive {
      message
      userID
    }
    ... on InvalidCredentials {
      msg
    }
  }
}
''';

const String resetPass = r'''
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

''';

const String updateProfile = r''' 
mutation ProfileUpdate($profileImage:Upload,$pass:String){
  updateProfile(password:$pass,profileImage:$profileImage){
    __typename
   ... on User {
      accountState
      email
      name
      placementDate
      profileImage
      role
    }
    ... on ApplicationErrors{
      errorMessage
    }
  }
}
''';

const String verifyOtp = r''' 

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

''';

const String fetchUserProfile = r''' 
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
    }
    ... on ApplicationErrors {
      errorMessage
    }
  }
}
''';
