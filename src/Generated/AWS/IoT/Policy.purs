module CloudFormation.AWS.IoT.Policy where 

import CloudFormation (Json) as CF
import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation (class Resource)
import Data.Newtype (class Newtype)


-- | `AWS::IoT::Policy`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot-policy.html
-- |
-- | - `PolicyDocument`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot-policy.html#cfn-iot-policy-policydocument
-- | - `PolicyName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot-policy.html#cfn-iot-policy-policyname
newtype Policy = Policy
  { "PolicyDocument" :: CF.Json
  , "PolicyName" :: Maybe String
  }

derive instance newtypePolicy :: Newtype Policy _
instance resourcePolicy :: Resource Policy where type_ _ = "AWS::IoT::Policy"

policy :: { "PolicyDocument" :: CF.Json } -> Policy
policy required = Policy
  (merge required
    { "PolicyName" : Nothing
    })