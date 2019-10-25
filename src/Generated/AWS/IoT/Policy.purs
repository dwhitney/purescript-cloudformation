module CloudFormation.AWS.IoT.Policy where 

import CloudFormation (Value)
import CloudFormation (Json) as CF
import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


-- | `AWS::IoT::Policy`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot-policy.html
-- |
-- | - `PolicyDocument`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot-policy.html#cfn-iot-policy-policydocument
-- | - `PolicyName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot-policy.html#cfn-iot-policy-policyname
newtype Policy = Policy
  { "PolicyDocument" :: Value CF.Json
  , "PolicyName" :: Maybe (Value String)
  }

derive instance newtypePolicy :: Newtype Policy _
derive newtype instance writePolicy :: WriteForeign Policy
instance resourcePolicy :: Resource Policy where type_ _ = "AWS::IoT::Policy"

policy :: { "PolicyDocument" :: Value CF.Json } -> Policy
policy required = Policy
  (merge required
    { "PolicyName" : Nothing
    })