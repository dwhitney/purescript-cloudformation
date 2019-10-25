module CloudFormation.AWS.ServiceDiscovery.HttpNamespace where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


-- | `AWS::ServiceDiscovery::HttpNamespace`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicediscovery-httpnamespace.html
-- |
-- | - `Description`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicediscovery-httpnamespace.html#cfn-servicediscovery-httpnamespace-description
-- | - `Name`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicediscovery-httpnamespace.html#cfn-servicediscovery-httpnamespace-name
newtype HttpNamespace = HttpNamespace
  { "Name" :: Value String
  , "Description" :: Maybe (Value String)
  }

derive instance newtypeHttpNamespace :: Newtype HttpNamespace _
derive newtype instance writeHttpNamespace :: WriteForeign HttpNamespace
instance resourceHttpNamespace :: Resource HttpNamespace where type_ _ = "AWS::ServiceDiscovery::HttpNamespace"

httpNamespace :: { "Name" :: Value String } -> HttpNamespace
httpNamespace required = HttpNamespace
  (merge required
    { "Description" : Nothing
    })