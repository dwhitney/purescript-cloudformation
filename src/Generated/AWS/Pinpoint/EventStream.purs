module CloudFormation.AWS.Pinpoint.EventStream where 

import CloudFormation (class Resource)
import Data.Newtype (class Newtype)


-- | `AWS::Pinpoint::EventStream`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-eventstream.html
-- |
-- | - `ApplicationId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-eventstream.html#cfn-pinpoint-eventstream-applicationid
-- | - `DestinationStreamArn`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-eventstream.html#cfn-pinpoint-eventstream-destinationstreamarn
-- | - `RoleArn`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-eventstream.html#cfn-pinpoint-eventstream-rolearn
newtype EventStream = EventStream
  { "ApplicationId" :: String
  , "DestinationStreamArn" :: String
  , "RoleArn" :: String
  }

derive instance newtypeEventStream :: Newtype EventStream _
instance resourceEventStream :: Resource EventStream where type_ _ = "AWS::Pinpoint::EventStream"

eventStream :: { "ApplicationId" :: String, "DestinationStreamArn" :: String, "RoleArn" :: String } -> EventStream
eventStream required = EventStream
  required