module CloudFormation.AWS.Cognito.UserPoolGroup where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


-- | `AWS::Cognito::UserPoolGroup`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpoolgroup.html
-- |
-- | - `GroupName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpoolgroup.html#cfn-cognito-userpoolgroup-groupname
-- | - `Description`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpoolgroup.html#cfn-cognito-userpoolgroup-description
-- | - `UserPoolId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpoolgroup.html#cfn-cognito-userpoolgroup-userpoolid
-- | - `Precedence`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpoolgroup.html#cfn-cognito-userpoolgroup-precedence
-- | - `RoleArn`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpoolgroup.html#cfn-cognito-userpoolgroup-rolearn
newtype UserPoolGroup = UserPoolGroup
  { "UserPoolId" :: Value String
  , "GroupName" :: Maybe (Value String)
  , "Description" :: Maybe (Value String)
  , "Precedence" :: Maybe (Value Number)
  , "RoleArn" :: Maybe (Value String)
  }

derive instance newtypeUserPoolGroup :: Newtype UserPoolGroup _
derive newtype instance writeUserPoolGroup :: WriteForeign UserPoolGroup
instance resourceUserPoolGroup :: Resource UserPoolGroup where type_ _ = "AWS::Cognito::UserPoolGroup"

userPoolGroup :: { "UserPoolId" :: Value String } -> UserPoolGroup
userPoolGroup required = UserPoolGroup
  (merge required
    { "GroupName" : Nothing
    , "Description" : Nothing
    , "Precedence" : Nothing
    , "RoleArn" : Nothing
    })