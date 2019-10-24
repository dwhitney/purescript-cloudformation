module CloudFormation.AWS.Cognito.UserPoolIdentityProvider where 

import Foreign (Foreign)
import Data.Maybe (Maybe(..))
import Record (merge)


-- | `AWS::Cognito::UserPoolIdentityProvider`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpoolidentityprovider.html-- |
-- | - `ProviderName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpoolidentityprovider.html#cfn-cognito-userpoolidentityprovider-providername
-- | - `UserPoolId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpoolidentityprovider.html#cfn-cognito-userpoolidentityprovider-userpoolid
-- | - `AttributeMapping`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpoolidentityprovider.html#cfn-cognito-userpoolidentityprovider-attributemapping
-- | - `ProviderDetails`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpoolidentityprovider.html#cfn-cognito-userpoolidentityprovider-providerdetails
-- | - `ProviderType`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpoolidentityprovider.html#cfn-cognito-userpoolidentityprovider-providertype
-- | - `IdpIdentifiers`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpoolidentityprovider.html#cfn-cognito-userpoolidentityprovider-idpidentifiers
type UserPoolIdentityProvider =
  { "ProviderName" :: String
  , "UserPoolId" :: String
  , "ProviderType" :: String
  , "AttributeMapping" :: Maybe Foreign
  , "ProviderDetails" :: Maybe Foreign
  , "IdpIdentifiers" :: Maybe (Array String)
  }

userPoolIdentityProvider :: { "ProviderName" :: String, "UserPoolId" :: String, "ProviderType" :: String } -> UserPoolIdentityProvider
userPoolIdentityProvider required =
  merge required
    { "AttributeMapping" : Nothing
    , "ProviderDetails" : Nothing
    , "IdpIdentifiers" : Nothing
    }