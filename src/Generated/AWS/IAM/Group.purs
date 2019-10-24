module CloudFormation.AWS.IAM.Group where 

import Data.Maybe (Maybe(..))
import CloudFormation (class Resource)
import Data.Newtype (class Newtype)
import CloudFormation (Json) as CF


-- | `AWS::IAM::Group`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-group.html
-- |
-- | - `GroupName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-group.html#cfn-iam-group-groupname
-- | - `ManagedPolicyArns`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-group.html#cfn-iam-group-managepolicyarns
-- | - `Path`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-group.html#cfn-iam-group-path
-- | - `Policies`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-group.html#cfn-iam-group-policies
newtype Group = Group
  { "GroupName" :: Maybe String
  , "ManagedPolicyArns" :: Maybe (Array String)
  , "Path" :: Maybe String
  , "Policies" :: Maybe (Array Policy)
  }

derive instance newtypeGroup :: Newtype Group _
instance resourceGroup :: Resource Group where type_ _ = "AWS::IAM::Group"

group :: Group
group = Group
  { "GroupName" : Nothing
  , "ManagedPolicyArns" : Nothing
  , "Path" : Nothing
  , "Policies" : Nothing
  }

-- | `AWS::IAM::Group.Policy`
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