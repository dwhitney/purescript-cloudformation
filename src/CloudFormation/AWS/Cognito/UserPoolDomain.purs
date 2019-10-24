module CloudFormation.AWS.Cognito.UserPoolDomain where 

import Data.Maybe (Maybe(..))
import Record (merge)


type UserPoolDomain =
  { "UserPoolId" :: String
  , "Domain" :: String
  , "CustomDomainConfig" :: Maybe CustomDomainConfigType
  }

userPoolDomain :: { "UserPoolId" :: String, "Domain" :: String } -> UserPoolDomain
userPoolDomain required =
  merge required
    { "CustomDomainConfig" : Nothing
    }

type CustomDomainConfigType =
  { "CertificateArn" :: Maybe String
  }

customDomainConfigType :: CustomDomainConfigType
customDomainConfigType =
  { "CertificateArn" : Nothing
  }