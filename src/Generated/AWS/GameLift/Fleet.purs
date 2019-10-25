module CloudFormation.AWS.GameLift.Fleet where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


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
  { "BuildId" :: Value String
  , "DesiredEC2Instances" :: Value Int
  , "EC2InstanceType" :: Value String
  , "Name" :: Value String
  , "ServerLaunchPath" :: Value String
  , "Description" :: Maybe (Value String)
  , "EC2InboundPermissions" :: Maybe (Value (Array IpPermission))
  , "LogPaths" :: Maybe (Value (Array String))
  , "MaxSize" :: Maybe (Value Int)
  , "MinSize" :: Maybe (Value Int)
  , "ServerLaunchParameters" :: Maybe (Value String)
  }

derive instance newtypeFleet :: Newtype Fleet _
derive newtype instance writeFleet :: WriteForeign Fleet
instance resourceFleet :: Resource Fleet where type_ _ = "AWS::GameLift::Fleet"

fleet :: { "BuildId" :: Value String, "DesiredEC2Instances" :: Value Int, "EC2InstanceType" :: Value String, "Name" :: Value String, "ServerLaunchPath" :: Value String } -> Fleet
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
  { "FromPort" :: Value Int
  , "IpRange" :: Value String
  , "Protocol" :: Value String
  , "ToPort" :: Value Int
  }

ipPermission :: { "FromPort" :: Value Int, "IpRange" :: Value String, "Protocol" :: Value String, "ToPort" :: Value Int } -> IpPermission
ipPermission required =
  required