module CloudFormation.AWS.Config.AggregationAuthorization where 

import CloudFormation (class Resource)
import Data.Newtype (class Newtype)


-- | `AWS::Config::AggregationAuthorization`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-config-aggregationauthorization.html
-- |
-- | - `AuthorizedAccountId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-config-aggregationauthorization.html#cfn-config-aggregationauthorization-authorizedaccountid
-- | - `AuthorizedAwsRegion`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-config-aggregationauthorization.html#cfn-config-aggregationauthorization-authorizedawsregion
newtype AggregationAuthorization = AggregationAuthorization
  { "AuthorizedAccountId" :: String
  , "AuthorizedAwsRegion" :: String
  }

derive instance newtypeAggregationAuthorization :: Newtype AggregationAuthorization _
instance resourceAggregationAuthorization :: Resource AggregationAuthorization where type_ _ = "AWS::Config::AggregationAuthorization"

aggregationAuthorization :: { "AuthorizedAccountId" :: String, "AuthorizedAwsRegion" :: String } -> AggregationAuthorization
aggregationAuthorization required = AggregationAuthorization
  required