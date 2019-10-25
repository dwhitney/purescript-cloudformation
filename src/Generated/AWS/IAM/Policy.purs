module CloudFormation.AWS.IAM.Policy where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import CloudFormation (Json) as CF
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


-- | `AWS::IAM::Policy`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-policy.html
-- |
-- | - `Groups`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-policy.html#cfn-iam-policy-groups
-- | - `PolicyDocument`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-policy.html#cfn-iam-policy-policydocument
-- | - `PolicyName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-policy.html#cfn-iam-policy-policyname
-- | - `Roles`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-policy.html#cfn-iam-policy-roles
-- | - `Users`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-policy.html#cfn-iam-policy-users
newtype Policy = Policy
  { "PolicyDocument" :: Value CF.Json
  , "PolicyName" :: Value String
  , "Groups" :: Maybe (Value (Array String))
  , "Roles" :: Maybe (Value (Array String))
  , "Users" :: Maybe (Value (Array String))
  }

derive instance newtypePolicy :: Newtype Policy _
derive newtype instance writePolicy :: WriteForeign Policy
instance resourcePolicy :: Resource Policy where type_ _ = "AWS::IAM::Policy"

policy :: { "PolicyDocument" :: Value CF.Json, "PolicyName" :: Value String } -> Policy
policy required = Policy
  (merge required
    { "Groups" : Nothing
    , "Roles" : Nothing
    , "Users" : Nothing
    })