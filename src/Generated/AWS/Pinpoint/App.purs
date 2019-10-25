module CloudFormation.AWS.Pinpoint.App where 

import CloudFormation (Value)
import CloudFormation (Json) as CF
import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


-- | `AWS::Pinpoint::App`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-app.html
-- |
-- | - `Tags`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-app.html#cfn-pinpoint-app-tags
-- | - `Name`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-app.html#cfn-pinpoint-app-name
newtype App = App
  { "Name" :: Value String
  , "Tags" :: Maybe (Value CF.Json)
  }

derive instance newtypeApp :: Newtype App _
derive newtype instance writeApp :: WriteForeign App
instance resourceApp :: Resource App where type_ _ = "AWS::Pinpoint::App"

app :: { "Name" :: Value String } -> App
app required = App
  (merge required
    { "Tags" : Nothing
    })