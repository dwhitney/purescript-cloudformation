module CloudFormation.AWS.ServiceDiscovery.PublicDnsNamespace where 

import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation (class Resource)
import Data.Newtype (class Newtype)


-- | `AWS::ServiceDiscovery::PublicDnsNamespace`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicediscovery-publicdnsnamespace.html
-- |
-- | - `Description`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicediscovery-publicdnsnamespace.html#cfn-servicediscovery-publicdnsnamespace-description
-- | - `Name`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicediscovery-publicdnsnamespace.html#cfn-servicediscovery-publicdnsnamespace-name
newtype PublicDnsNamespace = PublicDnsNamespace
  { "Name" :: String
  , "Description" :: Maybe String
  }

derive instance newtypePublicDnsNamespace :: Newtype PublicDnsNamespace _
instance resourcePublicDnsNamespace :: Resource PublicDnsNamespace where type_ _ = "AWS::ServiceDiscovery::PublicDnsNamespace"

publicDnsNamespace :: { "Name" :: String } -> PublicDnsNamespace
publicDnsNamespace required = PublicDnsNamespace
  (merge required
    { "Description" : Nothing
    })