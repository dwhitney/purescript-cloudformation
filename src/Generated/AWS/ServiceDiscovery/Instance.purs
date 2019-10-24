module CloudFormation.AWS.ServiceDiscovery.Instance where 

import CloudFormation (Json)
import Data.Maybe (Maybe(..))
import Record (merge)


-- | `AWS::ServiceDiscovery::Instance`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicediscovery-instance.html
-- |
-- | - `InstanceAttributes`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicediscovery-instance.html#cfn-servicediscovery-instance-instanceattributes
-- | - `InstanceId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicediscovery-instance.html#cfn-servicediscovery-instance-instanceid
-- | - `ServiceId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicediscovery-instance.html#cfn-servicediscovery-instance-serviceid
type Instance =
  { "InstanceAttributes" :: Json
  , "ServiceId" :: String
  , "InstanceId" :: Maybe String
  }

instance_ :: { "InstanceAttributes" :: Json, "ServiceId" :: String } -> Instance
instance_ required =
  merge required
    { "InstanceId" : Nothing
    }