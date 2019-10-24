module CloudFormation.AWS.ServiceDiscovery.PrivateDnsNamespace where 

import Data.Maybe (Maybe(..))
import Record (merge)


-- | `AWS::ServiceDiscovery::PrivateDnsNamespace`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicediscovery-privatednsnamespace.html
-- |
-- | - `Description`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicediscovery-privatednsnamespace.html#cfn-servicediscovery-privatednsnamespace-description
-- | - `Vpc`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicediscovery-privatednsnamespace.html#cfn-servicediscovery-privatednsnamespace-vpc
-- | - `Name`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicediscovery-privatednsnamespace.html#cfn-servicediscovery-privatednsnamespace-name
type PrivateDnsNamespace =
  { "Vpc" :: String
  , "Name" :: String
  , "Description" :: Maybe String
  }

privateDnsNamespace :: { "Vpc" :: String, "Name" :: String } -> PrivateDnsNamespace
privateDnsNamespace required =
  merge required
    { "Description" : Nothing
    }