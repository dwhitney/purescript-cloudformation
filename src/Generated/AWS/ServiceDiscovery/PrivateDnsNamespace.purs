module CloudFormation.AWS.ServiceDiscovery.PrivateDnsNamespace where 

import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation (class Resource)
import Data.Newtype (class Newtype)


-- | `AWS::ServiceDiscovery::PrivateDnsNamespace`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicediscovery-privatednsnamespace.html
-- |
-- | - `Description`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicediscovery-privatednsnamespace.html#cfn-servicediscovery-privatednsnamespace-description
-- | - `Vpc`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicediscovery-privatednsnamespace.html#cfn-servicediscovery-privatednsnamespace-vpc
-- | - `Name`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicediscovery-privatednsnamespace.html#cfn-servicediscovery-privatednsnamespace-name
newtype PrivateDnsNamespace = PrivateDnsNamespace
  { "Vpc" :: String
  , "Name" :: String
  , "Description" :: Maybe String
  }

derive instance newtypePrivateDnsNamespace :: Newtype PrivateDnsNamespace _
instance resourcePrivateDnsNamespace :: Resource PrivateDnsNamespace where type_ _ = "AWS::ServiceDiscovery::PrivateDnsNamespace"

privateDnsNamespace :: { "Vpc" :: String, "Name" :: String } -> PrivateDnsNamespace
privateDnsNamespace required = PrivateDnsNamespace
  (merge required
    { "Description" : Nothing
    })