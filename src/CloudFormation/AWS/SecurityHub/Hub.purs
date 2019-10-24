module CloudFormation.AWS.SecurityHub.Hub where 

import Foreign (Foreign)
import Data.Maybe (Maybe(..))


-- | `AWS::SecurityHub::Hub`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-securityhub-hub.html-- |
-- | - `Tags`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-securityhub-hub.html#cfn-securityhub-hub-tags
type Hub =
  { "Tags" :: Maybe Foreign
  }

hub :: Hub
hub =
  { "Tags" : Nothing
  }