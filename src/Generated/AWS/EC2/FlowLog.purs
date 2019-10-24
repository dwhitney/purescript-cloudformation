module CloudFormation.AWS.EC2.FlowLog where 

import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation (class Resource)
import Data.Newtype (class Newtype)


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
  { "ResourceId" :: String
  , "ResourceType" :: String
  , "TrafficType" :: String
  , "DeliverLogsPermissionArn" :: Maybe String
  , "LogDestination" :: Maybe String
  , "LogDestinationType" :: Maybe String
  , "LogGroupName" :: Maybe String
  }

derive instance newtypeFlowLog :: Newtype FlowLog _
instance resourceFlowLog :: Resource FlowLog where type_ _ = "AWS::EC2::FlowLog"

flowLog :: { "ResourceId" :: String, "ResourceType" :: String, "TrafficType" :: String } -> FlowLog
flowLog required = FlowLog
  (merge required
    { "DeliverLogsPermissionArn" : Nothing
    , "LogDestination" : Nothing
    , "LogDestinationType" : Nothing
    , "LogGroupName" : Nothing
    })