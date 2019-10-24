module CloudFormation.AWS.ServiceDiscovery.Instance where 

import CloudFormation (Json) as CF
import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation (class Resource)
import Data.Newtype (class Newtype)


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
  { "InstanceAttributes" :: CF.Json
  , "ServiceId" :: String
  , "InstanceId" :: Maybe String
  }

derive instance newtypeInstance :: Newtype Instance _
instance resourceInstance :: Resource Instance where type_ _ = "AWS::ServiceDiscovery::Instance"

instance_ :: { "InstanceAttributes" :: CF.Json, "ServiceId" :: String } -> Instance
instance_ required = Instance
  (merge required
    { "InstanceId" : Nothing
    })