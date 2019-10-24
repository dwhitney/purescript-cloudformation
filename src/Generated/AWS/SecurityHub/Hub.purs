module CloudFormation.AWS.SecurityHub.Hub where 

import CloudFormation (Json) as CF
import Data.Maybe (Maybe(..))
import CloudFormation (class Resource)
import Data.Newtype (class Newtype)


-- | `AWS::SecurityHub::Hub`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-securityhub-hub.html
-- |
-- | - `Tags`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-securityhub-hub.html#cfn-securityhub-hub-tags
newtype Hub = Hub
  { "Tags" :: Maybe CF.Json
  }

derive instance newtypeHub :: Newtype Hub _
instance resourceHub :: Resource Hub where type_ _ = "AWS::SecurityHub::Hub"

hub :: Hub
hub = Hub
  { "Tags" : Nothing
  }