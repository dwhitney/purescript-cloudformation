module CloudFormation.AWS.AppSync.ApiKey where 

import Data.Maybe (Maybe(..))
import Record (merge)


-- | `AWS::AppSync::ApiKey`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appsync-apikey.html
-- |
-- | - `Description`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appsync-apikey.html#cfn-appsync-apikey-description
-- | - `Expires`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appsync-apikey.html#cfn-appsync-apikey-expires
-- | - `ApiId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appsync-apikey.html#cfn-appsync-apikey-apiid
type ApiKey =
  { "ApiId" :: String
  , "Description" :: Maybe String
  , "Expires" :: Maybe Number
  }

apiKey :: { "ApiId" :: String } -> ApiKey
apiKey required =
  merge required
    { "Description" : Nothing
    , "Expires" : Nothing
    }