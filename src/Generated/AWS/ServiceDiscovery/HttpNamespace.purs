module CloudFormation.AWS.ServiceDiscovery.HttpNamespace where 

import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation (class Resource)
import Data.Newtype (class Newtype)


-- | `AWS::ServiceDiscovery::HttpNamespace`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicediscovery-httpnamespace.html
-- |
-- | - `Description`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicediscovery-httpnamespace.html#cfn-servicediscovery-httpnamespace-description
-- | - `Name`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicediscovery-httpnamespace.html#cfn-servicediscovery-httpnamespace-name
newtype HttpNamespace = HttpNamespace
  { "Name" :: String
  , "Description" :: Maybe String
  }

derive instance newtypeHttpNamespace :: Newtype HttpNamespace _
instance resourceHttpNamespace :: Resource HttpNamespace where type_ _ = "AWS::ServiceDiscovery::HttpNamespace"

httpNamespace :: { "Name" :: String } -> HttpNamespace
httpNamespace required = HttpNamespace
  (merge required
    { "Description" : Nothing
    })