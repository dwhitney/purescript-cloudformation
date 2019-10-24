module CloudFormation.AWS.Cognito.UserPoolGroup where 

import Data.Maybe (Maybe(..))
import Record (merge)


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
type UserPoolGroup =
  { "UserPoolId" :: String
  , "GroupName" :: Maybe String
  , "Description" :: Maybe String
  , "Precedence" :: Maybe Number
  , "RoleArn" :: Maybe String
  }

userPoolGroup :: { "UserPoolId" :: String } -> UserPoolGroup
userPoolGroup required =
  merge required
    { "GroupName" : Nothing
    , "Description" : Nothing
    , "Precedence" : Nothing
    , "RoleArn" : Nothing
    }