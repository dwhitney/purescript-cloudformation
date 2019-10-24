module CloudFormation.AWS.Cognito.UserPoolGroup where 

import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation (class Resource)
import Data.Newtype (class Newtype)


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
  { "UserPoolId" :: String
  , "GroupName" :: Maybe String
  , "Description" :: Maybe String
  , "Precedence" :: Maybe Number
  , "RoleArn" :: Maybe String
  }

derive instance newtypeUserPoolGroup :: Newtype UserPoolGroup _
instance resourceUserPoolGroup :: Resource UserPoolGroup where type_ _ = "AWS::Cognito::UserPoolGroup"

userPoolGroup :: { "UserPoolId" :: String } -> UserPoolGroup
userPoolGroup required = UserPoolGroup
  (merge required
    { "GroupName" : Nothing
    , "Description" : Nothing
    , "Precedence" : Nothing
    , "RoleArn" : Nothing
    })