module CloudFormation.AWS.Logs.Destination where 




-- | `AWS::Logs::Destination`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-logs-destination.html
-- |
-- | - `DestinationName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-logs-destination.html#cfn-logs-destination-destinationname
-- | - `DestinationPolicy`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-logs-destination.html#cfn-logs-destination-destinationpolicy
-- | - `RoleArn`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-logs-destination.html#cfn-logs-destination-rolearn
-- | - `TargetArn`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-logs-destination.html#cfn-logs-destination-targetarn
type Destination =
  { "DestinationName" :: String
  , "DestinationPolicy" :: String
  , "RoleArn" :: String
  , "TargetArn" :: String
  }

destination :: { "DestinationName" :: String, "DestinationPolicy" :: String, "RoleArn" :: String, "TargetArn" :: String } -> Destination
destination required =
  required