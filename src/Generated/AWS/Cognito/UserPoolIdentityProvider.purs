module CloudFormation.AWS.Cognito.UserPoolIdentityProvider where 

import CloudFormation (Json) as CF
import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation (class Resource)
import Data.Newtype (class Newtype)


-- | `AWS::Cognito::UserPoolIdentityProvider`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpoolidentityprovider.html
-- |
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
newtype UserPoolIdentityProvider = UserPoolIdentityProvider
  { "ProviderName" :: String
  , "UserPoolId" :: String
  , "ProviderType" :: String
  , "AttributeMapping" :: Maybe CF.Json
  , "ProviderDetails" :: Maybe CF.Json
  , "IdpIdentifiers" :: Maybe (Array String)
  }

derive instance newtypeUserPoolIdentityProvider :: Newtype UserPoolIdentityProvider _
instance resourceUserPoolIdentityProvider :: Resource UserPoolIdentityProvider where type_ _ = "AWS::Cognito::UserPoolIdentityProvider"

userPoolIdentityProvider :: { "ProviderName" :: String, "UserPoolId" :: String, "ProviderType" :: String } -> UserPoolIdentityProvider
userPoolIdentityProvider required = UserPoolIdentityProvider
  (merge required
    { "AttributeMapping" : Nothing
    , "ProviderDetails" : Nothing
    , "IdpIdentifiers" : Nothing
    })