module CloudFormation.AWS.Pinpoint.App where 

import CloudFormation (Json) as CF
import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation (class Resource)
import Data.Newtype (class Newtype)


-- | `AWS::Pinpoint::App`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-app.html
-- |
-- | - `Tags`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-app.html#cfn-pinpoint-app-tags
-- | - `Name`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-app.html#cfn-pinpoint-app-name
newtype App = App
  { "Name" :: String
  , "Tags" :: Maybe CF.Json
  }

derive instance newtypeApp :: Newtype App _
instance resourceApp :: Resource App where type_ _ = "AWS::Pinpoint::App"

app :: { "Name" :: String } -> App
app required = App
  (merge required
    { "Tags" : Nothing
    })