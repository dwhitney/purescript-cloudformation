module CloudFormation.AWS.Pinpoint.EventStream where 

import CloudFormation (Value)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


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
  { "ApplicationId" :: Value String
  , "DestinationStreamArn" :: Value String
  , "RoleArn" :: Value String
  }

derive instance newtypeEventStream :: Newtype EventStream _
derive newtype instance writeEventStream :: WriteForeign EventStream
instance resourceEventStream :: Resource EventStream where type_ _ = "AWS::Pinpoint::EventStream"

eventStream :: { "ApplicationId" :: Value String, "DestinationStreamArn" :: Value String, "RoleArn" :: Value String } -> EventStream
eventStream required = EventStream
  required