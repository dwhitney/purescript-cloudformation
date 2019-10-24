module CloudFormation.AWS.Pinpoint.App where 

import Foreign (Foreign)
import Data.Maybe (Maybe(..))
import Record (merge)


-- | `AWS::Pinpoint::App`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-app.html-- |
-- | - `Tags`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-app.html#cfn-pinpoint-app-tags
-- | - `Name`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-app.html#cfn-pinpoint-app-name
type App =
  { "Name" :: String
  , "Tags" :: Maybe Foreign
  }

app :: { "Name" :: String } -> App
app required =
  merge required
    { "Tags" : Nothing
    }