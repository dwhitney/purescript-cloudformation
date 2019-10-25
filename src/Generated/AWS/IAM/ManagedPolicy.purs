module CloudFormation.AWS.IAM.ManagedPolicy where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import CloudFormation (Json) as CF
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


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
  { "PolicyDocument" :: Value CF.Json
  , "Description" :: Maybe (Value String)
  , "Groups" :: Maybe (Value (Array String))
  , "ManagedPolicyName" :: Maybe (Value String)
  , "Path" :: Maybe (Value String)
  , "Roles" :: Maybe (Value (Array String))
  , "Users" :: Maybe (Value (Array String))
  }

derive instance newtypeManagedPolicy :: Newtype ManagedPolicy _
derive newtype instance writeManagedPolicy :: WriteForeign ManagedPolicy
instance resourceManagedPolicy :: Resource ManagedPolicy where type_ _ = "AWS::IAM::ManagedPolicy"

managedPolicy :: { "PolicyDocument" :: Value CF.Json } -> ManagedPolicy
managedPolicy required = ManagedPolicy
  (merge required
    { "Description" : Nothing
    , "Groups" : Nothing
    , "ManagedPolicyName" : Nothing
    , "Path" : Nothing
    , "Roles" : Nothing
    , "Users" : Nothing
    })