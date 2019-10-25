module CloudFormation.AWS.IAM.User where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)
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
  { "Groups" :: Maybe (Value (Array String))
  , "LoginProfile" :: Maybe (Value LoginProfile)
  , "ManagedPolicyArns" :: Maybe (Value (Array String))
  , "Path" :: Maybe (Value String)
  , "PermissionsBoundary" :: Maybe (Value String)
  , "Policies" :: Maybe (Value (Array Policy))
  , "UserName" :: Maybe (Value String)
  }

derive instance newtypeUser :: Newtype User _
derive newtype instance writeUser :: WriteForeign User
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
  { "PolicyDocument" :: Value CF.Json
  , "PolicyName" :: Value String
  }

policy :: { "PolicyDocument" :: Value CF.Json, "PolicyName" :: Value String } -> Policy
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
  { "Password" :: Value String
  , "PasswordResetRequired" :: Maybe (Value Boolean)
  }

loginProfile :: { "Password" :: Value String } -> LoginProfile
loginProfile required =
  (merge required
    { "PasswordResetRequired" : Nothing
    })