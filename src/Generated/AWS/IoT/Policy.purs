module CloudFormation.AWS.IoT.Policy where 

import CloudFormation (Json)
import Data.Maybe (Maybe(..))
import Record (merge)


-- | `AWS::IoT::Policy`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot-policy.html
-- |
-- | - `PolicyDocument`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot-policy.html#cfn-iot-policy-policydocument
-- | - `PolicyName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot-policy.html#cfn-iot-policy-policyname
type Policy =
  { "PolicyDocument" :: Json
  , "PolicyName" :: Maybe String
  }

policy :: { "PolicyDocument" :: Json } -> Policy
policy required =
  merge required
    { "PolicyName" : Nothing
    }