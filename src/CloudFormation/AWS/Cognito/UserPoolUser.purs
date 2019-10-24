module CloudFormation.AWS.Cognito.UserPoolUser where 

import Data.Maybe (Maybe(..))
import Record (merge)


-- | `AWS::Cognito::UserPoolUser`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpooluser.html-- |
-- | - `ValidationData`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpooluser.html#cfn-cognito-userpooluser-validationdata
-- | - `UserPoolId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpooluser.html#cfn-cognito-userpooluser-userpoolid
-- | - `Username`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpooluser.html#cfn-cognito-userpooluser-username
-- | - `MessageAction`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpooluser.html#cfn-cognito-userpooluser-messageaction
-- | - `DesiredDeliveryMediums`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpooluser.html#cfn-cognito-userpooluser-desireddeliverymediums
-- | - `ForceAliasCreation`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpooluser.html#cfn-cognito-userpooluser-forcealiascreation
-- | - `UserAttributes`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpooluser.html#cfn-cognito-userpooluser-userattributes
type UserPoolUser =
  { "UserPoolId" :: String
  , "ValidationData" :: Maybe (Array AttributeType)
  , "Username" :: Maybe String
  , "MessageAction" :: Maybe String
  , "DesiredDeliveryMediums" :: Maybe (Array String)
  , "ForceAliasCreation" :: Maybe Boolean
  , "UserAttributes" :: Maybe (Array AttributeType)
  }

userPoolUser :: { "UserPoolId" :: String } -> UserPoolUser
userPoolUser required =
  merge required
    { "ValidationData" : Nothing
    , "Username" : Nothing
    , "MessageAction" : Nothing
    , "DesiredDeliveryMediums" : Nothing
    , "ForceAliasCreation" : Nothing
    , "UserAttributes" : Nothing
    }

-- | `AWS::Cognito::UserPoolUser.AttributeType`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpooluser-attributetype.html-- |
-- | - `Value`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpooluser-attributetype.html#cfn-cognito-userpooluser-attributetype-value
-- | - `Name`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpooluser-attributetype.html#cfn-cognito-userpooluser-attributetype-name
type AttributeType =
  { "Value" :: Maybe String
  , "Name" :: Maybe String
  }

attributeType :: AttributeType
attributeType =
  { "Value" : Nothing
  , "Name" : Nothing
  }