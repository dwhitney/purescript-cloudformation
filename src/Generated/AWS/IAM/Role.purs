module CloudFormation.AWS.IAM.Role where 

import CloudFormation (Json)
import Data.Maybe (Maybe(..))
import CloudFormation.Tag (Tag)
import Record (merge)


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
type Role =
  { "AssumeRolePolicyDocument" :: Json
  , "Description" :: Maybe String
  , "ManagedPolicyArns" :: Maybe (Array String)
  , "MaxSessionDuration" :: Maybe Int
  , "Path" :: Maybe String
  , "PermissionsBoundary" :: Maybe String
  , "Policies" :: Maybe (Array Policy)
  , "RoleName" :: Maybe String
  , "Tags" :: Maybe (Array Tag)
  }

role :: { "AssumeRolePolicyDocument" :: Json } -> Role
role required =
  merge required
    { "Description" : Nothing
    , "ManagedPolicyArns" : Nothing
    , "MaxSessionDuration" : Nothing
    , "Path" : Nothing
    , "PermissionsBoundary" : Nothing
    , "Policies" : Nothing
    , "RoleName" : Nothing
    , "Tags" : Nothing
    }

-- | `AWS::IAM::Role.Policy`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-policy.html
-- |
-- | - `PolicyDocument`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-policy.html#cfn-iam-policies-policydocument
-- | - `PolicyName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-policy.html#cfn-iam-policies-policyname
type Policy =
  { "PolicyDocument" :: Json
  , "PolicyName" :: String
  }

policy :: { "PolicyDocument" :: Json, "PolicyName" :: String } -> Policy
policy required =
  required