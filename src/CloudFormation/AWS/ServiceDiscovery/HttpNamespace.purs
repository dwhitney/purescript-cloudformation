module CloudFormation.AWS.ServiceDiscovery.HttpNamespace where 

import Data.Maybe (Maybe(..))
import Record (merge)


-- | `AWS::ServiceDiscovery::HttpNamespace`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicediscovery-httpnamespace.html-- |
-- | - `Description`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicediscovery-httpnamespace.html#cfn-servicediscovery-httpnamespace-description
-- | - `Name`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicediscovery-httpnamespace.html#cfn-servicediscovery-httpnamespace-name
type HttpNamespace =
  { "Name" :: String
  , "Description" :: Maybe String
  }

httpNamespace :: { "Name" :: String } -> HttpNamespace
httpNamespace required =
  merge required
    { "Description" : Nothing
    }