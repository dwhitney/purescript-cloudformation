module CloudFormation.AWS.AppSync.ApiKey where 

import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation (class Resource)
import Data.Newtype (class Newtype)


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
  { "ApiId" :: String
  , "Description" :: Maybe String
  , "Expires" :: Maybe Number
  }

derive instance newtypeApiKey :: Newtype ApiKey _
instance resourceApiKey :: Resource ApiKey where type_ _ = "AWS::AppSync::ApiKey"

apiKey :: { "ApiId" :: String } -> ApiKey
apiKey required = ApiKey
  (merge required
    { "Description" : Nothing
    , "Expires" : Nothing
    })