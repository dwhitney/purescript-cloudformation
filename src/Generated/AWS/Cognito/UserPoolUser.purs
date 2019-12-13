module CloudFormation.AWS.Cognito.UserPoolUser where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import CloudFormation (Json) as CF
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


-- | `AWS::Cognito::UserPoolUser`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpooluser.html
-- |
-- | - `ValidationData`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpooluser.html#cfn-cognito-userpooluser-validationdata
-- | - `UserPoolId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpooluser.html#cfn-cognito-userpooluser-userpoolid
-- | - `Username`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpooluser.html#cfn-cognito-userpooluser-username
-- | - `MessageAction`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpooluser.html#cfn-cognito-userpooluser-messageaction
-- | - `ClientMetadata`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpooluser.html#cfn-cognito-userpooluser-clientmetadata
-- | - `DesiredDeliveryMediums`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpooluser.html#cfn-cognito-userpooluser-desireddeliverymediums
-- | - `ForceAliasCreation`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpooluser.html#cfn-cognito-userpooluser-forcealiascreation
-- | - `UserAttributes`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpooluser.html#cfn-cognito-userpooluser-userattributes
newtype UserPoolUser = UserPoolUser
  { "UserPoolId" :: Value String
  , "ValidationData" :: Maybe (Value (Array AttributeType))
  , "Username" :: Maybe (Value String)
  , "MessageAction" :: Maybe (Value String)
  , "ClientMetadata" :: Maybe (Value CF.Json)
  , "DesiredDeliveryMediums" :: Maybe (Value (Array String))
  , "ForceAliasCreation" :: Maybe (Value Boolean)
  , "UserAttributes" :: Maybe (Value (Array AttributeType))
  }

derive instance newtypeUserPoolUser :: Newtype UserPoolUser _
derive newtype instance writeUserPoolUser :: WriteForeign UserPoolUser
instance resourceUserPoolUser :: Resource UserPoolUser where type_ _ = "AWS::Cognito::UserPoolUser"

userPoolUser :: { "UserPoolId" :: Value String } -> UserPoolUser
userPoolUser required = UserPoolUser
  (merge required
    { "ValidationData" : Nothing
    , "Username" : Nothing
    , "MessageAction" : Nothing
    , "ClientMetadata" : Nothing
    , "DesiredDeliveryMediums" : Nothing
    , "ForceAliasCreation" : Nothing
    , "UserAttributes" : Nothing
    })

-- | `AWS::Cognito::UserPoolUser.AttributeType`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpooluser-attributetype.html
-- |
-- | - `Value`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpooluser-attributetype.html#cfn-cognito-userpooluser-attributetype-value
-- | - `Name`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpooluser-attributetype.html#cfn-cognito-userpooluser-attributetype-name
type AttributeType =
  { "Value" :: Maybe (Value String)
  , "Name" :: Maybe (Value String)
  }

attributeType :: AttributeType
attributeType =
  { "Value" : Nothing
  , "Name" : Nothing
  }