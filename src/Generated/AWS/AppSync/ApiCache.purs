module CloudFormation.AWS.AppSync.ApiCache where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


-- | `AWS::AppSync::ApiCache`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appsync-apicache.html
-- |
-- | - `Type`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appsync-apicache.html#cfn-appsync-apicache-type
-- | - `TransitEncryptionEnabled`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appsync-apicache.html#cfn-appsync-apicache-transitencryptionenabled
-- | - `AtRestEncryptionEnabled`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appsync-apicache.html#cfn-appsync-apicache-atrestencryptionenabled
-- | - `ApiId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appsync-apicache.html#cfn-appsync-apicache-apiid
-- | - `ApiCachingBehavior`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appsync-apicache.html#cfn-appsync-apicache-apicachingbehavior
-- | - `Ttl`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appsync-apicache.html#cfn-appsync-apicache-ttl
newtype ApiCache = ApiCache
  { "Type" :: Value String
  , "ApiId" :: Value String
  , "ApiCachingBehavior" :: Value String
  , "Ttl" :: Value Number
  , "TransitEncryptionEnabled" :: Maybe (Value Boolean)
  , "AtRestEncryptionEnabled" :: Maybe (Value Boolean)
  }

derive instance newtypeApiCache :: Newtype ApiCache _
derive newtype instance writeApiCache :: WriteForeign ApiCache
instance resourceApiCache :: Resource ApiCache where type_ _ = "AWS::AppSync::ApiCache"

apiCache :: { "Type" :: Value String, "ApiId" :: Value String, "ApiCachingBehavior" :: Value String, "Ttl" :: Value Number } -> ApiCache
apiCache required = ApiCache
  (merge required
    { "TransitEncryptionEnabled" : Nothing
    , "AtRestEncryptionEnabled" : Nothing
    })