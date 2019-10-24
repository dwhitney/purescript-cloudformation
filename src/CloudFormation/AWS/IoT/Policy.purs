module CloudFormation.AWS.IoT.Policy where 

import Foreign (Foreign)
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
  { "PolicyDocument" :: Foreign
  , "PolicyName" :: Maybe String
  }

policy :: { "PolicyDocument" :: Foreign } -> Policy
policy required =
  merge required
    { "PolicyName" : Nothing
    }