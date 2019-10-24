module CloudFormation.AWS.Pinpoint.EventStream where 




-- | `AWS::Pinpoint::EventStream`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-eventstream.html
-- |
-- | - `ApplicationId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-eventstream.html#cfn-pinpoint-eventstream-applicationid
-- | - `DestinationStreamArn`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-eventstream.html#cfn-pinpoint-eventstream-destinationstreamarn
-- | - `RoleArn`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-eventstream.html#cfn-pinpoint-eventstream-rolearn
type EventStream =
  { "ApplicationId" :: String
  , "DestinationStreamArn" :: String
  , "RoleArn" :: String
  }

eventStream :: { "ApplicationId" :: String, "DestinationStreamArn" :: String, "RoleArn" :: String } -> EventStream
eventStream required =
  required