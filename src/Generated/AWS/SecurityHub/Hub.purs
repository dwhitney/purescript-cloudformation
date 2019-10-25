module CloudFormation.AWS.SecurityHub.Hub where 

import CloudFormation (Value)
import CloudFormation (Json) as CF
import Data.Maybe (Maybe(..))
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


-- | `AWS::SecurityHub::Hub`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-securityhub-hub.html
-- |
-- | - `Tags`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-securityhub-hub.html#cfn-securityhub-hub-tags
newtype Hub = Hub
  { "Tags" :: Maybe (Value CF.Json)
  }

derive instance newtypeHub :: Newtype Hub _
derive newtype instance writeHub :: WriteForeign Hub
instance resourceHub :: Resource Hub where type_ _ = "AWS::SecurityHub::Hub"

hub :: Hub
hub = Hub
  { "Tags" : Nothing
  }