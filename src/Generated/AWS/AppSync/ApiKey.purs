module CloudFormation.AWS.AppSync.ApiKey where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


-- | `AWS::AppSync::ApiKey`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appsync-apikey.html
-- |
-- | - `Description`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appsync-apikey.html#cfn-appsync-apikey-description
-- | - `Expires`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appsync-apikey.html#cfn-appsync-apikey-expires
-- | - `ApiId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appsync-apikey.html#cfn-appsync-apikey-apiid
newtype ApiKey = ApiKey
  { "ApiId" :: Value String
  , "Description" :: Maybe (Value String)
  , "Expires" :: Maybe (Value Number)
  }

derive instance newtypeApiKey :: Newtype ApiKey _
derive newtype instance writeApiKey :: WriteForeign ApiKey
instance resourceApiKey :: Resource ApiKey where type_ _ = "AWS::AppSync::ApiKey"

apiKey :: { "ApiId" :: Value String } -> ApiKey
apiKey required = ApiKey
  (merge required
    { "Description" : Nothing
    , "Expires" : Nothing
    })