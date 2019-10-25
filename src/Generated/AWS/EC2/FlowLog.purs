module CloudFormation.AWS.EC2.FlowLog where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


-- | `AWS::EC2::FlowLog`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-flowlog.html
-- |
-- | - `DeliverLogsPermissionArn`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-flowlog.html#cfn-ec2-flowlog-deliverlogspermissionarn
-- | - `LogDestination`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-flowlog.html#cfn-ec2-flowlog-logdestination
-- | - `LogDestinationType`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-flowlog.html#cfn-ec2-flowlog-logdestinationtype
-- | - `LogGroupName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-flowlog.html#cfn-ec2-flowlog-loggroupname
-- | - `ResourceId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-flowlog.html#cfn-ec2-flowlog-resourceid
-- | - `ResourceType`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-flowlog.html#cfn-ec2-flowlog-resourcetype
-- | - `TrafficType`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-flowlog.html#cfn-ec2-flowlog-traffictype
newtype FlowLog = FlowLog
  { "ResourceId" :: Value String
  , "ResourceType" :: Value String
  , "TrafficType" :: Value String
  , "DeliverLogsPermissionArn" :: Maybe (Value String)
  , "LogDestination" :: Maybe (Value String)
  , "LogDestinationType" :: Maybe (Value String)
  , "LogGroupName" :: Maybe (Value String)
  }

derive instance newtypeFlowLog :: Newtype FlowLog _
derive newtype instance writeFlowLog :: WriteForeign FlowLog
instance resourceFlowLog :: Resource FlowLog where type_ _ = "AWS::EC2::FlowLog"

flowLog :: { "ResourceId" :: Value String, "ResourceType" :: Value String, "TrafficType" :: Value String } -> FlowLog
flowLog required = FlowLog
  (merge required
    { "DeliverLogsPermissionArn" : Nothing
    , "LogDestination" : Nothing
    , "LogDestinationType" : Nothing
    , "LogGroupName" : Nothing
    })