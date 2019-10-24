module CloudFormation.AWS.IAM.User where 

import Data.Maybe (Maybe(..))
import CloudFormation (class Resource)
import Data.Newtype (class Newtype)
import CloudFormation (Json) as CF
import Record (merge)


-- | `AWS::IAM::User`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-user.html
-- |
-- | - `Groups`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-user.html#cfn-iam-user-groups
-- | - `LoginProfile`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-user.html#cfn-iam-user-loginprofile
-- | - `ManagedPolicyArns`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-user.html#cfn-iam-user-managepolicyarns
-- | - `Path`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-user.html#cfn-iam-user-path
-- | - `PermissionsBoundary`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-user.html#cfn-iam-user-permissionsboundary
-- | - `Policies`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-user.html#cfn-iam-user-policies
-- | - `UserName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-user.html#cfn-iam-user-username
newtype User = User
  { "Groups" :: Maybe (Array String)
  , "LoginProfile" :: Maybe LoginProfile
  , "ManagedPolicyArns" :: Maybe (Array String)
  , "Path" :: Maybe String
  , "PermissionsBoundary" :: Maybe String
  , "Policies" :: Maybe (Array Policy)
  , "UserName" :: Maybe String
  }

derive instance newtypeUser :: Newtype User _
instance resourceUser :: Resource User where type_ _ = "AWS::IAM::User"

user :: User
user = User
  { "Groups" : Nothing
  , "LoginProfile" : Nothing
  , "ManagedPolicyArns" : Nothing
  , "Path" : Nothing
  , "PermissionsBoundary" : Nothing
  , "Policies" : Nothing
  , "UserName" : Nothing
  }

-- | `AWS::IAM::User.Policy`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-policy.html
-- |
-- | - `PolicyDocument`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-policy.html#cfn-iam-policies-policydocument
-- | - `PolicyName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-policy.html#cfn-iam-policies-policyname
type Policy =
  { "PolicyDocument" :: CF.Json
  , "PolicyName" :: String
  }

policy :: { "PolicyDocument" :: CF.Json, "PolicyName" :: String } -> Policy
policy required =
  required

-- | `AWS::IAM::User.LoginProfile`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-user-loginprofile.html
-- |
-- | - `Password`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-user-loginprofile.html#cfn-iam-user-loginprofile-password
-- | - `PasswordResetRequired`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-user-loginprofile.html#cfn-iam-user-loginprofile-passwordresetrequired
type LoginProfile =
  { "Password" :: String
  , "PasswordResetRequired" :: Maybe Boolean
  }

loginProfile :: { "Password" :: String } -> LoginProfile
loginProfile required =
  (merge required
    { "PasswordResetRequired" : Nothing
    })