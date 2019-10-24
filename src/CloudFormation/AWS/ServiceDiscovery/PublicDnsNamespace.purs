module CloudFormation.AWS.ServiceDiscovery.PublicDnsNamespace where 

import Data.Maybe (Maybe(..))
import Record (merge)


-- | `AWS::ServiceDiscovery::PublicDnsNamespace`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicediscovery-publicdnsnamespace.html-- |
-- | - `Description`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicediscovery-publicdnsnamespace.html#cfn-servicediscovery-publicdnsnamespace-description
-- | - `Name`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicediscovery-publicdnsnamespace.html#cfn-servicediscovery-publicdnsnamespace-name
type PublicDnsNamespace =
  { "Name" :: String
  , "Description" :: Maybe String
  }

publicDnsNamespace :: { "Name" :: String } -> PublicDnsNamespace
publicDnsNamespace required =
  merge required
    { "Description" : Nothing
    }