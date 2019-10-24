module CloudFormation.AWS.EC2.FlowLog where 

import Data.Maybe (Maybe(..))
import Record (merge)


-- | `AWS::EC2::FlowLog`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-flowlog.html-- |
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
type FlowLog =
  { "ResourceId" :: String
  , "ResourceType" :: String
  , "TrafficType" :: String
  , "DeliverLogsPermissionArn" :: Maybe String
  , "LogDestination" :: Maybe String
  , "LogDestinationType" :: Maybe String
  , "LogGroupName" :: Maybe String
  }

flowLog :: { "ResourceId" :: String, "ResourceType" :: String, "TrafficType" :: String } -> FlowLog
flowLog required =
  merge required
    { "DeliverLogsPermissionArn" : Nothing
    , "LogDestination" : Nothing
    , "LogDestinationType" : Nothing
    , "LogGroupName" : Nothing
    }