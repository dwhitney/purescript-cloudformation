module CloudFormation.AWS.ServiceDiscovery.PrivateDnsNamespace where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


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
  { "Vpc" :: Value String
  , "Name" :: Value String
  , "Description" :: Maybe (Value String)
  }

derive instance newtypePrivateDnsNamespace :: Newtype PrivateDnsNamespace _
derive newtype instance writePrivateDnsNamespace :: WriteForeign PrivateDnsNamespace
instance resourcePrivateDnsNamespace :: Resource PrivateDnsNamespace where type_ _ = "AWS::ServiceDiscovery::PrivateDnsNamespace"

privateDnsNamespace :: { "Vpc" :: Value String, "Name" :: Value String } -> PrivateDnsNamespace
privateDnsNamespace required = PrivateDnsNamespace
  (merge required
    { "Description" : Nothing
    })