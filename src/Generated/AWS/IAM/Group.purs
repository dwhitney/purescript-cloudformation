module CloudFormation.AWS.IAM.Group where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)
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
  { "GroupName" :: Maybe (Value String)
  , "ManagedPolicyArns" :: Maybe (Value (Array String))
  , "Path" :: Maybe (Value String)
  , "Policies" :: Maybe (Value (Array Policy))
  }

derive instance newtypeGroup :: Newtype Group _
derive newtype instance writeGroup :: WriteForeign Group
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
  { "PolicyDocument" :: Value CF.Json
  , "PolicyName" :: Value String
  }

policy :: { "PolicyDocument" :: Value CF.Json, "PolicyName" :: Value String } -> Policy
policy required =
  required