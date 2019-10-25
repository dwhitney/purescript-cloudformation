module CloudFormation.AWS.ServiceDiscovery.Instance where 

import CloudFormation (Value)
import CloudFormation (Json) as CF
import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


-- | `AWS::ServiceDiscovery::Instance`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicediscovery-instance.html
-- |
-- | - `InstanceAttributes`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicediscovery-instance.html#cfn-servicediscovery-instance-instanceattributes
-- | - `InstanceId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicediscovery-instance.html#cfn-servicediscovery-instance-instanceid
-- | - `ServiceId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicediscovery-instance.html#cfn-servicediscovery-instance-serviceid
newtype Instance = Instance
  { "InstanceAttributes" :: Value CF.Json
  , "ServiceId" :: Value String
  , "InstanceId" :: Maybe (Value String)
  }

derive instance newtypeInstance :: Newtype Instance _
derive newtype instance writeInstance :: WriteForeign Instance
instance resourceInstance :: Resource Instance where type_ _ = "AWS::ServiceDiscovery::Instance"

instance_ :: { "InstanceAttributes" :: Value CF.Json, "ServiceId" :: Value String } -> Instance
instance_ required = Instance
  (merge required
    { "InstanceId" : Nothing
    })