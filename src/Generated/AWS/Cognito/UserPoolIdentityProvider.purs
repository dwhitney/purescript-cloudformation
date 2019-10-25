module CloudFormation.AWS.Cognito.UserPoolIdentityProvider where 

import CloudFormation (Value)
import CloudFormation (Json) as CF
import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


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
  { "ProviderName" :: Value String
  , "UserPoolId" :: Value String
  , "ProviderType" :: Value String
  , "AttributeMapping" :: Maybe (Value CF.Json)
  , "ProviderDetails" :: Maybe (Value CF.Json)
  , "IdpIdentifiers" :: Maybe (Value (Array String))
  }

derive instance newtypeUserPoolIdentityProvider :: Newtype UserPoolIdentityProvider _
derive newtype instance writeUserPoolIdentityProvider :: WriteForeign UserPoolIdentityProvider
instance resourceUserPoolIdentityProvider :: Resource UserPoolIdentityProvider where type_ _ = "AWS::Cognito::UserPoolIdentityProvider"

userPoolIdentityProvider :: { "ProviderName" :: Value String, "UserPoolId" :: Value String, "ProviderType" :: Value String } -> UserPoolIdentityProvider
userPoolIdentityProvider required = UserPoolIdentityProvider
  (merge required
    { "AttributeMapping" : Nothing
    , "ProviderDetails" : Nothing
    , "IdpIdentifiers" : Nothing
    })