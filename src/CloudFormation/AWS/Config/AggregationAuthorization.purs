module CloudFormation.AWS.Config.AggregationAuthorization where 




-- | `AWS::Config::AggregationAuthorization`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-config-aggregationauthorization.html
-- |
-- | - `AuthorizedAccountId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-config-aggregationauthorization.html#cfn-config-aggregationauthorization-authorizedaccountid
-- | - `AuthorizedAwsRegion`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-config-aggregationauthorization.html#cfn-config-aggregationauthorization-authorizedawsregion
type AggregationAuthorization =
  { "AuthorizedAccountId" :: String
  , "AuthorizedAwsRegion" :: String
  }

aggregationAuthorization :: { "AuthorizedAccountId" :: String, "AuthorizedAwsRegion" :: String } -> AggregationAuthorization
aggregationAuthorization required =
  required