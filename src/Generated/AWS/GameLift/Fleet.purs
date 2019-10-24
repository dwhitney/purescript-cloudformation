module CloudFormation.AWS.GameLift.Fleet where 

import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation (class Resource)
import Data.Newtype (class Newtype)


-- | `AWS::GameLift::Fleet`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-gamelift-fleet.html
-- |
-- | - `BuildId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-gamelift-fleet.html#cfn-gamelift-fleet-buildid
-- | - `Description`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-gamelift-fleet.html#cfn-gamelift-fleet-description
-- | - `DesiredEC2Instances`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-gamelift-fleet.html#cfn-gamelift-fleet-desiredec2instances
-- | - `EC2InboundPermissions`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-gamelift-fleet.html#cfn-gamelift-fleet-ec2inboundpermissions
-- | - `EC2InstanceType`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-gamelift-fleet.html#cfn-gamelift-fleet-ec2instancetype
-- | - `LogPaths`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-gamelift-fleet.html#cfn-gamelift-fleet-logpaths
-- | - `MaxSize`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-gamelift-fleet.html#cfn-gamelift-fleet-maxsize
-- | - `MinSize`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-gamelift-fleet.html#cfn-gamelift-fleet-minsize
-- | - `Name`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-gamelift-fleet.html#cfn-gamelift-fleet-name
-- | - `ServerLaunchParameters`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-gamelift-fleet.html#cfn-gamelift-fleet-serverlaunchparameters
-- | - `ServerLaunchPath`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-gamelift-fleet.html#cfn-gamelift-fleet-serverlaunchpath
newtype Fleet = Fleet
  { "BuildId" :: String
  , "DesiredEC2Instances" :: Int
  , "EC2InstanceType" :: String
  , "Name" :: String
  , "ServerLaunchPath" :: String
  , "Description" :: Maybe String
  , "EC2InboundPermissions" :: Maybe (Array IpPermission)
  , "LogPaths" :: Maybe (Array String)
  , "MaxSize" :: Maybe Int
  , "MinSize" :: Maybe Int
  , "ServerLaunchParameters" :: Maybe String
  }

derive instance newtypeFleet :: Newtype Fleet _
instance resourceFleet :: Resource Fleet where type_ _ = "AWS::GameLift::Fleet"

fleet :: { "BuildId" :: String, "DesiredEC2Instances" :: Int, "EC2InstanceType" :: String, "Name" :: String, "ServerLaunchPath" :: String } -> Fleet
fleet required = Fleet
  (merge required
    { "Description" : Nothing
    , "EC2InboundPermissions" : Nothing
    , "LogPaths" : Nothing
    , "MaxSize" : Nothing
    , "MinSize" : Nothing
    , "ServerLaunchParameters" : Nothing
    })

-- | `AWS::GameLift::Fleet.IpPermission`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-gamelift-fleet-ec2inboundpermission.html
-- |
-- | - `FromPort`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-gamelift-fleet-ec2inboundpermission.html#cfn-gamelift-fleet-ec2inboundpermissions-fromport
-- | - `IpRange`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-gamelift-fleet-ec2inboundpermission.html#cfn-gamelift-fleet-ec2inboundpermissions-iprange
-- | - `Protocol`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-gamelift-fleet-ec2inboundpermission.html#cfn-gamelift-fleet-ec2inboundpermissions-protocol
-- | - `ToPort`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-gamelift-fleet-ec2inboundpermission.html#cfn-gamelift-fleet-ec2inboundpermissions-toport
type IpPermission =
  { "FromPort" :: Int
  , "IpRange" :: String
  , "Protocol" :: String
  , "ToPort" :: Int
  }

ipPermission :: { "FromPort" :: Int, "IpRange" :: String, "Protocol" :: String, "ToPort" :: Int } -> IpPermission
ipPermission required =
  required