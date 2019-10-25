module CloudFormation.AWS.IAM.Role where 

import CloudFormation (Value)
import CloudFormation (Json) as CF
import Data.Maybe (Maybe(..))
import CloudFormation.Tag (Tag)
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


-- | `AWS::IAM::Role`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-role.html
-- |
-- | - `AssumeRolePolicyDocument`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-role.html#cfn-iam-role-assumerolepolicydocument
-- | - `Description`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-role.html#cfn-iam-role-description
-- | - `ManagedPolicyArns`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-role.html#cfn-iam-role-managepolicyarns
-- | - `MaxSessionDuration`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-role.html#cfn-iam-role-maxsessionduration
-- | - `Path`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-role.html#cfn-iam-role-path
-- | - `PermissionsBoundary`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-role.html#cfn-iam-role-permissionsboundary
-- | - `Policies`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-role.html#cfn-iam-role-policies
-- | - `RoleName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-role.html#cfn-iam-role-rolename
-- | - `Tags`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-role.html#cfn-iam-role-tags
newtype Role = Role
  { "AssumeRolePolicyDocument" :: Value CF.Json
  , "Description" :: Maybe (Value String)
  , "ManagedPolicyArns" :: Maybe (Value (Array String))
  , "MaxSessionDuration" :: Maybe (Value Int)
  , "Path" :: Maybe (Value String)
  , "PermissionsBoundary" :: Maybe (Value String)
  , "Policies" :: Maybe (Value (Array Policy))
  , "RoleName" :: Maybe (Value String)
  , "Tags" :: Maybe (Value (Array Tag))
  }

derive instance newtypeRole :: Newtype Role _
derive newtype instance writeRole :: WriteForeign Role
instance resourceRole :: Resource Role where type_ _ = "AWS::IAM::Role"

role :: { "AssumeRolePolicyDocument" :: Value CF.Json } -> Role
role required = Role
  (merge required
    { "Description" : Nothing
    , "ManagedPolicyArns" : Nothing
    , "MaxSessionDuration" : Nothing
    , "Path" : Nothing
    , "PermissionsBoundary" : Nothing
    , "Policies" : Nothing
    , "RoleName" : Nothing
    , "Tags" : Nothing
    })

-- | `AWS::IAM::Role.Policy`
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