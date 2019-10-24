module CloudFormation.AWS.IAM.Policy where 

import Data.Maybe (Maybe(..))
import CloudFormation (Json) as CF
import Record (merge)
import CloudFormation (class Resource)
import Data.Newtype (class Newtype)


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
  { "PolicyDocument" :: CF.Json
  , "PolicyName" :: String
  , "Groups" :: Maybe (Array String)
  , "Roles" :: Maybe (Array String)
  , "Users" :: Maybe (Array String)
  }

derive instance newtypePolicy :: Newtype Policy _
instance resourcePolicy :: Resource Policy where type_ _ = "AWS::IAM::Policy"

policy :: { "PolicyDocument" :: CF.Json, "PolicyName" :: String } -> Policy
policy required = Policy
  (merge required
    { "Groups" : Nothing
    , "Roles" : Nothing
    , "Users" : Nothing
    })