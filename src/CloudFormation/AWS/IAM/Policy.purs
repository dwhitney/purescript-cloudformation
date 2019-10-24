module CloudFormation.AWS.IAM.Policy where 

import Data.Maybe (Maybe(..))
import Foreign (Foreign)
import Record (merge)


-- | `AWS::IAM::Policy`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-policy.html-- |
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
type Policy =
  { "PolicyDocument" :: Foreign
  , "PolicyName" :: String
  , "Groups" :: Maybe (Array String)
  , "Roles" :: Maybe (Array String)
  , "Users" :: Maybe (Array String)
  }

policy :: { "PolicyDocument" :: Foreign, "PolicyName" :: String } -> Policy
policy required =
  merge required
    { "Groups" : Nothing
    , "Roles" : Nothing
    , "Users" : Nothing
    }