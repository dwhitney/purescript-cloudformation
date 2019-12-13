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
-- | - `CertificateConfiguration`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-gamelift-fleet.html#cfn-gamelift-fleet-certificateconfiguration
-- | - `Description`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-gamelift-fleet.html#cfn-gamelift-fleet-description
-- | - `DesiredEC2Instances`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-gamelift-fleet.html#cfn-gamelift-fleet-desiredec2instances
-- | - `EC2InboundPermissions`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-gamelift-fleet.html#cfn-gamelift-fleet-ec2inboundpermissions
-- | - `EC2InstanceType`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-gamelift-fleet.html#cfn-gamelift-fleet-ec2instancetype
-- | - `FleetType`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-gamelift-fleet.html#cfn-gamelift-fleet-fleettype
-- | - `InstanceRoleARN`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-gamelift-fleet.html#cfn-gamelift-fleet-instancerolearn
-- | - `LogPaths`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-gamelift-fleet.html#cfn-gamelift-fleet-logpaths
-- | - `MaxSize`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-gamelift-fleet.html#cfn-gamelift-fleet-maxsize
-- | - `MetricGroups`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-gamelift-fleet.html#cfn-gamelift-fleet-metricgroups
-- | - `MinSize`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-gamelift-fleet.html#cfn-gamelift-fleet-minsize
-- | - `Name`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-gamelift-fleet.html#cfn-gamelift-fleet-name
-- | - `NewGameSessionProtectionPolicy`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-gamelift-fleet.html#cfn-gamelift-fleet-newgamesessionprotectionpolicy
-- | - `PeerVpcAwsAccountId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-gamelift-fleet.html#cfn-gamelift-fleet-peervpcawsaccountid
-- | - `PeerVpcId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-gamelift-fleet.html#cfn-gamelift-fleet-peervpcid
-- | - `ResourceCreationLimitPolicy`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-gamelift-fleet.html#cfn-gamelift-fleet-resourcecreationlimitpolicy
-- | - `RuntimeConfiguration`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-gamelift-fleet.html#cfn-gamelift-fleet-runtimeconfiguration
-- | - `ScriptId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-gamelift-fleet.html#cfn-gamelift-fleet-scriptid
-- | - `ServerLaunchParameters`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-gamelift-fleet.html#cfn-gamelift-fleet-serverlaunchparameters
-- | - `ServerLaunchPath`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-gamelift-fleet.html#cfn-gamelift-fleet-serverlaunchpath
newtype Fleet = Fleet
  { "EC2InstanceType" :: Value String
  , "Name" :: Value String
  , "BuildId" :: Maybe (Value String)
  , "CertificateConfiguration" :: Maybe (Value CertificateConfiguration)
  , "Description" :: Maybe (Value String)
  , "DesiredEC2Instances" :: Maybe (Value Int)
  , "EC2InboundPermissions" :: Maybe (Value (Array IpPermission))
  , "FleetType" :: Maybe (Value String)
  , "InstanceRoleARN" :: Maybe (Value String)
  , "LogPaths" :: Maybe (Value (Array String))
  , "MaxSize" :: Maybe (Value Int)
  , "MetricGroups" :: Maybe (Value (Array String))
  , "MinSize" :: Maybe (Value Int)
  , "NewGameSessionProtectionPolicy" :: Maybe (Value String)
  , "PeerVpcAwsAccountId" :: Maybe (Value String)
  , "PeerVpcId" :: Maybe (Value String)
  , "ResourceCreationLimitPolicy" :: Maybe (Value ResourceCreationLimitPolicy)
  , "RuntimeConfiguration" :: Maybe (Value RuntimeConfiguration)
  , "ScriptId" :: Maybe (Value String)
  , "ServerLaunchParameters" :: Maybe (Value String)
  , "ServerLaunchPath" :: Maybe (Value String)
  }

derive instance newtypeFleet :: Newtype Fleet _
derive newtype instance writeFleet :: WriteForeign Fleet
instance resourceFleet :: Resource Fleet where type_ _ = "AWS::GameLift::Fleet"

fleet :: { "EC2InstanceType" :: Value String, "Name" :: Value String } -> Fleet
fleet required = Fleet
  (merge required
    { "BuildId" : Nothing
    , "CertificateConfiguration" : Nothing
    , "Description" : Nothing
    , "DesiredEC2Instances" : Nothing
    , "EC2InboundPermissions" : Nothing
    , "FleetType" : Nothing
    , "InstanceRoleARN" : Nothing
    , "LogPaths" : Nothing
    , "MaxSize" : Nothing
    , "MetricGroups" : Nothing
    , "MinSize" : Nothing
    , "NewGameSessionProtectionPolicy" : Nothing
    , "PeerVpcAwsAccountId" : Nothing
    , "PeerVpcId" : Nothing
    , "ResourceCreationLimitPolicy" : Nothing
    , "RuntimeConfiguration" : Nothing
    , "ScriptId" : Nothing
    , "ServerLaunchParameters" : Nothing
    , "ServerLaunchPath" : Nothing
    })

-- | `AWS::GameLift::Fleet.RuntimeConfiguration`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-gamelift-fleet-runtimeconfiguration.html
-- |
-- | - `GameSessionActivationTimeoutSeconds`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-gamelift-fleet-runtimeconfiguration.html#cfn-gamelift-fleet-runtimeconfiguration-gamesessionactivationtimeoutseconds
-- | - `MaxConcurrentGameSessionActivations`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-gamelift-fleet-runtimeconfiguration.html#cfn-gamelift-fleet-runtimeconfiguration-maxconcurrentgamesessionactivations
-- | - `ServerProcesses`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-gamelift-fleet-runtimeconfiguration.html#cfn-gamelift-fleet-runtimeconfiguration-serverprocesses
type RuntimeConfiguration =
  { "GameSessionActivationTimeoutSeconds" :: Maybe (Value Int)
  , "MaxConcurrentGameSessionActivations" :: Maybe (Value Int)
  , "ServerProcesses" :: Maybe (Value (Array ServerProcess))
  }

runtimeConfiguration :: RuntimeConfiguration
runtimeConfiguration =
  { "GameSessionActivationTimeoutSeconds" : Nothing
  , "MaxConcurrentGameSessionActivations" : Nothing
  , "ServerProcesses" : Nothing
  }

-- | `AWS::GameLift::Fleet.CertificateConfiguration`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-gamelift-fleet-certificateconfiguration.html
-- |
-- | - `CertificateType`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-gamelift-fleet-certificateconfiguration.html#cfn-gamelift-fleet-certificateconfiguration-certificatetype
type CertificateConfiguration =
  { "CertificateType" :: Value String
  }

certificateConfiguration :: { "CertificateType" :: Value String } -> CertificateConfiguration
certificateConfiguration required =
  required

-- | `AWS::GameLift::Fleet.ResourceCreationLimitPolicy`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-gamelift-fleet-resourcecreationlimitpolicy.html
-- |
-- | - `NewGameSessionsPerCreator`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-gamelift-fleet-resourcecreationlimitpolicy.html#cfn-gamelift-fleet-resourcecreationlimitpolicy-newgamesessionspercreator
-- | - `PolicyPeriodInMinutes`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-gamelift-fleet-resourcecreationlimitpolicy.html#cfn-gamelift-fleet-resourcecreationlimitpolicy-policyperiodinminutes
type ResourceCreationLimitPolicy =
  { "NewGameSessionsPerCreator" :: Maybe (Value Int)
  , "PolicyPeriodInMinutes" :: Maybe (Value Int)
  }

resourceCreationLimitPolicy :: ResourceCreationLimitPolicy
resourceCreationLimitPolicy =
  { "NewGameSessionsPerCreator" : Nothing
  , "PolicyPeriodInMinutes" : Nothing
  }

-- | `AWS::GameLift::Fleet.ServerProcess`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-gamelift-fleet-serverprocess.html
-- |
-- | - `ConcurrentExecutions`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-gamelift-fleet-serverprocess.html#cfn-gamelift-fleet-serverprocess-concurrentexecutions
-- | - `LaunchPath`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-gamelift-fleet-serverprocess.html#cfn-gamelift-fleet-serverprocess-launchpath
-- | - `Parameters`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-gamelift-fleet-serverprocess.html#cfn-gamelift-fleet-serverprocess-parameters
type ServerProcess =
  { "ConcurrentExecutions" :: Value Int
  , "LaunchPath" :: Value String
  , "Parameters" :: Maybe (Value String)
  }

serverProcess :: { "ConcurrentExecutions" :: Value Int, "LaunchPath" :: Value String } -> ServerProcess
serverProcess required =
  (merge required
    { "Parameters" : Nothing
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