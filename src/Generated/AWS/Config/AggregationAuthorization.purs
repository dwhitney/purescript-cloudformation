module CloudFormation.AWS.Config.AggregationAuthorization where 

import CloudFormation (Value)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


-- | `AWS::Config::AggregationAuthorization`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-config-aggregationauthorization.html
-- |
-- | - `AuthorizedAccountId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-config-aggregationauthorization.html#cfn-config-aggregationauthorization-authorizedaccountid
-- | - `AuthorizedAwsRegion`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-config-aggregationauthorization.html#cfn-config-aggregationauthorization-authorizedawsregion
newtype AggregationAuthorization = AggregationAuthorization
  { "AuthorizedAccountId" :: Value String
  , "AuthorizedAwsRegion" :: Value String
  }

derive instance newtypeAggregationAuthorization :: Newtype AggregationAuthorization _
derive newtype instance writeAggregationAuthorization :: WriteForeign AggregationAuthorization
instance resourceAggregationAuthorization :: Resource AggregationAuthorization where type_ _ = "AWS::Config::AggregationAuthorization"

aggregationAuthorization :: { "AuthorizedAccountId" :: Value String, "AuthorizedAwsRegion" :: Value String } -> AggregationAuthorization
aggregationAuthorization required = AggregationAuthorization
  required