module CloudFormation.AWS.ServiceDiscovery.PublicDnsNamespace where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


-- | `AWS::ServiceDiscovery::PublicDnsNamespace`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicediscovery-publicdnsnamespace.html
-- |
-- | - `Description`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicediscovery-publicdnsnamespace.html#cfn-servicediscovery-publicdnsnamespace-description
-- | - `Name`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicediscovery-publicdnsnamespace.html#cfn-servicediscovery-publicdnsnamespace-name
newtype PublicDnsNamespace = PublicDnsNamespace
  { "Name" :: Value String
  , "Description" :: Maybe (Value String)
  }

derive instance newtypePublicDnsNamespace :: Newtype PublicDnsNamespace _
derive newtype instance writePublicDnsNamespace :: WriteForeign PublicDnsNamespace
instance resourcePublicDnsNamespace :: Resource PublicDnsNamespace where type_ _ = "AWS::ServiceDiscovery::PublicDnsNamespace"

publicDnsNamespace :: { "Name" :: Value String } -> PublicDnsNamespace
publicDnsNamespace required = PublicDnsNamespace
  (merge required
    { "Description" : Nothing
    })