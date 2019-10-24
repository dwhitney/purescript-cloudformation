module CloudFormation.AWS.IAM.ManagedPolicy where 

import Data.Maybe (Maybe(..))
import CloudFormation (Json) as CF
import Record (merge)
import CloudFormation (class Resource)
import Data.Newtype (class Newtype)


-- | `AWS::IAM::ManagedPolicy`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-managedpolicy.html
-- |
-- | - `Description`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-managedpolicy.html#cfn-iam-managedpolicy-description
-- | - `Groups`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-managedpolicy.html#cfn-iam-managedpolicy-groups
-- | - `ManagedPolicyName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-managedpolicy.html#cfn-iam-managedpolicy-managedpolicyname
-- | - `Path`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-managedpolicy.html#cfn-ec2-dhcpoptions-path
-- | - `PolicyDocument`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-managedpolicy.html#cfn-iam-managedpolicy-policydocument
-- | - `Roles`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-managedpolicy.html#cfn-iam-managedpolicy-roles
-- | - `Users`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-managedpolicy.html#cfn-iam-managedpolicy-users
newtype ManagedPolicy = ManagedPolicy
  { "PolicyDocument" :: CF.Json
  , "Description" :: Maybe String
  , "Groups" :: Maybe (Array String)
  , "ManagedPolicyName" :: Maybe String
  , "Path" :: Maybe String
  , "Roles" :: Maybe (Array String)
  , "Users" :: Maybe (Array String)
  }

derive instance newtypeManagedPolicy :: Newtype ManagedPolicy _
instance resourceManagedPolicy :: Resource ManagedPolicy where type_ _ = "AWS::IAM::ManagedPolicy"

managedPolicy :: { "PolicyDocument" :: CF.Json } -> ManagedPolicy
managedPolicy required = ManagedPolicy
  (merge required
    { "Description" : Nothing
    , "Groups" : Nothing
    , "ManagedPolicyName" : Nothing
    , "Path" : Nothing
    , "Roles" : Nothing
    , "Users" : Nothing
    })