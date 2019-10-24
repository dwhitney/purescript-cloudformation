module CloudFormation.AWS.EC2.EC2Fleet where 

import Data.Maybe (Maybe(..))
import Record (merge)


-- | `AWS::EC2::EC2Fleet`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-ec2fleet.html
-- |
-- | - `TargetCapacitySpecification`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-ec2fleet.html#cfn-ec2-ec2fleet-targetcapacityspecification
-- | - `OnDemandOptions`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-ec2fleet.html#cfn-ec2-ec2fleet-ondemandoptions
-- | - `Type`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-ec2fleet.html#cfn-ec2-ec2fleet-type
-- | - `ExcessCapacityTerminationPolicy`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-ec2fleet.html#cfn-ec2-ec2fleet-excesscapacityterminationpolicy
-- | - `TagSpecifications`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-ec2fleet.html#cfn-ec2-ec2fleet-tagspecifications
-- | - `SpotOptions`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-ec2fleet.html#cfn-ec2-ec2fleet-spotoptions
-- | - `ValidFrom`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-ec2fleet.html#cfn-ec2-ec2fleet-validfrom
-- | - `ReplaceUnhealthyInstances`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-ec2fleet.html#cfn-ec2-ec2fleet-replaceunhealthyinstances
-- | - `LaunchTemplateConfigs`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-ec2fleet.html#cfn-ec2-ec2fleet-launchtemplateconfigs
-- | - `TerminateInstancesWithExpiration`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-ec2fleet.html#cfn-ec2-ec2fleet-terminateinstanceswithexpiration
-- | - `ValidUntil`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-ec2fleet.html#cfn-ec2-ec2fleet-validuntil
type EC2Fleet =
  { "TargetCapacitySpecification" :: TargetCapacitySpecificationRequest
  , "LaunchTemplateConfigs" :: Array FleetLaunchTemplateConfigRequest
  , "OnDemandOptions" :: Maybe OnDemandOptionsRequest
  , "Type" :: Maybe String
  , "ExcessCapacityTerminationPolicy" :: Maybe String
  , "TagSpecifications" :: Maybe (Array TagSpecification)
  , "SpotOptions" :: Maybe SpotOptionsRequest
  , "ValidFrom" :: Maybe String
  , "ReplaceUnhealthyInstances" :: Maybe Boolean
  , "TerminateInstancesWithExpiration" :: Maybe Boolean
  , "ValidUntil" :: Maybe String
  }

ecC2Fleet :: { "TargetCapacitySpecification" :: TargetCapacitySpecificationRequest, "LaunchTemplateConfigs" :: Array FleetLaunchTemplateConfigRequest } -> EC2Fleet
ecC2Fleet required =
  merge required
    { "OnDemandOptions" : Nothing
    , "Type" : Nothing
    , "ExcessCapacityTerminationPolicy" : Nothing
    , "TagSpecifications" : Nothing
    , "SpotOptions" : Nothing
    , "ValidFrom" : Nothing
    , "ReplaceUnhealthyInstances" : Nothing
    , "TerminateInstancesWithExpiration" : Nothing
    , "ValidUntil" : Nothing
    }

-- | `AWS::EC2::EC2Fleet.SpotOptionsRequest`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-ec2fleet-spotoptionsrequest.html
-- |
-- | - `AllocationStrategy`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-ec2fleet-spotoptionsrequest.html#cfn-ec2-ec2fleet-spotoptionsrequest-allocationstrategy
-- | - `InstanceInterruptionBehavior`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-ec2fleet-spotoptionsrequest.html#cfn-ec2-ec2fleet-spotoptionsrequest-instanceinterruptionbehavior
-- | - `InstancePoolsToUseCount`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-ec2fleet-spotoptionsrequest.html#cfn-ec2-ec2fleet-spotoptionsrequest-instancepoolstousecount
type SpotOptionsRequest =
  { "AllocationStrategy" :: Maybe String
  , "InstanceInterruptionBehavior" :: Maybe String
  , "InstancePoolsToUseCount" :: Maybe Int
  }

spotOptionsRequest :: SpotOptionsRequest
spotOptionsRequest =
  { "AllocationStrategy" : Nothing
  , "InstanceInterruptionBehavior" : Nothing
  , "InstancePoolsToUseCount" : Nothing
  }

-- | `AWS::EC2::EC2Fleet.TagSpecification`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-ec2fleet-tagspecification.html
-- |
-- | - `ResourceType`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-ec2fleet-tagspecification.html#cfn-ec2-ec2fleet-tagspecification-resourcetype
-- | - `Tags`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-ec2fleet-tagspecification.html#cfn-ec2-ec2fleet-tagspecification-tags
type TagSpecification =
  { "ResourceType" :: Maybe String
  , "Tags" :: Maybe (Array TagRequest)
  }

tagSpecification :: TagSpecification
tagSpecification =
  { "ResourceType" : Nothing
  , "Tags" : Nothing
  }

-- | `AWS::EC2::EC2Fleet.FleetLaunchTemplateConfigRequest`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-ec2fleet-fleetlaunchtemplateconfigrequest.html
-- |
-- | - `LaunchTemplateSpecification`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-ec2fleet-fleetlaunchtemplateconfigrequest.html#cfn-ec2-ec2fleet-fleetlaunchtemplateconfigrequest-launchtemplatespecification
-- | - `Overrides`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-ec2fleet-fleetlaunchtemplateconfigrequest.html#cfn-ec2-ec2fleet-fleetlaunchtemplateconfigrequest-overrides
type FleetLaunchTemplateConfigRequest =
  { "LaunchTemplateSpecification" :: Maybe FleetLaunchTemplateSpecificationRequest
  , "Overrides" :: Maybe (Array FleetLaunchTemplateOverridesRequest)
  }

fleetLaunchTemplateConfigRequest :: FleetLaunchTemplateConfigRequest
fleetLaunchTemplateConfigRequest =
  { "LaunchTemplateSpecification" : Nothing
  , "Overrides" : Nothing
  }

-- | `AWS::EC2::EC2Fleet.FleetLaunchTemplateOverridesRequest`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-ec2fleet-fleetlaunchtemplateoverridesrequest.html
-- |
-- | - `WeightedCapacity`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-ec2fleet-fleetlaunchtemplateoverridesrequest.html#cfn-ec2-ec2fleet-fleetlaunchtemplateoverridesrequest-weightedcapacity
-- | - `Priority`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-ec2fleet-fleetlaunchtemplateoverridesrequest.html#cfn-ec2-ec2fleet-fleetlaunchtemplateoverridesrequest-priority
-- | - `AvailabilityZone`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-ec2fleet-fleetlaunchtemplateoverridesrequest.html#cfn-ec2-ec2fleet-fleetlaunchtemplateoverridesrequest-availabilityzone
-- | - `SubnetId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-ec2fleet-fleetlaunchtemplateoverridesrequest.html#cfn-ec2-ec2fleet-fleetlaunchtemplateoverridesrequest-subnetid
-- | - `InstanceType`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-ec2fleet-fleetlaunchtemplateoverridesrequest.html#cfn-ec2-ec2fleet-fleetlaunchtemplateoverridesrequest-instancetype
-- | - `MaxPrice`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-ec2fleet-fleetlaunchtemplateoverridesrequest.html#cfn-ec2-ec2fleet-fleetlaunchtemplateoverridesrequest-maxprice
type FleetLaunchTemplateOverridesRequest =
  { "WeightedCapacity" :: Maybe Number
  , "Priority" :: Maybe Number
  , "AvailabilityZone" :: Maybe String
  , "SubnetId" :: Maybe String
  , "InstanceType" :: Maybe String
  , "MaxPrice" :: Maybe String
  }

fleetLaunchTemplateOverridesRequest :: FleetLaunchTemplateOverridesRequest
fleetLaunchTemplateOverridesRequest =
  { "WeightedCapacity" : Nothing
  , "Priority" : Nothing
  , "AvailabilityZone" : Nothing
  , "SubnetId" : Nothing
  , "InstanceType" : Nothing
  , "MaxPrice" : Nothing
  }

-- | `AWS::EC2::EC2Fleet.TargetCapacitySpecificationRequest`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-ec2fleet-targetcapacityspecificationrequest.html
-- |
-- | - `DefaultTargetCapacityType`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-ec2fleet-targetcapacityspecificationrequest.html#cfn-ec2-ec2fleet-targetcapacityspecificationrequest-defaulttargetcapacitytype
-- | - `TotalTargetCapacity`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-ec2fleet-targetcapacityspecificationrequest.html#cfn-ec2-ec2fleet-targetcapacityspecificationrequest-totaltargetcapacity
-- | - `OnDemandTargetCapacity`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-ec2fleet-targetcapacityspecificationrequest.html#cfn-ec2-ec2fleet-targetcapacityspecificationrequest-ondemandtargetcapacity
-- | - `SpotTargetCapacity`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-ec2fleet-targetcapacityspecificationrequest.html#cfn-ec2-ec2fleet-targetcapacityspecificationrequest-spottargetcapacity
type TargetCapacitySpecificationRequest =
  { "TotalTargetCapacity" :: Int
  , "DefaultTargetCapacityType" :: Maybe String
  , "OnDemandTargetCapacity" :: Maybe Int
  , "SpotTargetCapacity" :: Maybe Int
  }

targetCapacitySpecificationRequest :: { "TotalTargetCapacity" :: Int } -> TargetCapacitySpecificationRequest
targetCapacitySpecificationRequest required =
  merge required
    { "DefaultTargetCapacityType" : Nothing
    , "OnDemandTargetCapacity" : Nothing
    , "SpotTargetCapacity" : Nothing
    }

-- | `AWS::EC2::EC2Fleet.TagRequest`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-ec2fleet-tagrequest.html
-- |
-- | - `Value`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-ec2fleet-tagrequest.html#cfn-ec2-ec2fleet-tagrequest-value
-- | - `Key`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-ec2fleet-tagrequest.html#cfn-ec2-ec2fleet-tagrequest-key
type TagRequest =
  { "Value" :: Maybe String
  , "Key" :: Maybe String
  }

tagRequest :: TagRequest
tagRequest =
  { "Value" : Nothing
  , "Key" : Nothing
  }

-- | `AWS::EC2::EC2Fleet.OnDemandOptionsRequest`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-ec2fleet-ondemandoptionsrequest.html
-- |
-- | - `AllocationStrategy`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-ec2fleet-ondemandoptionsrequest.html#cfn-ec2-ec2fleet-ondemandoptionsrequest-allocationstrategy
type OnDemandOptionsRequest =
  { "AllocationStrategy" :: Maybe String
  }

onDemandOptionsRequest :: OnDemandOptionsRequest
onDemandOptionsRequest =
  { "AllocationStrategy" : Nothing
  }

-- | `AWS::EC2::EC2Fleet.FleetLaunchTemplateSpecificationRequest`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-ec2fleet-fleetlaunchtemplatespecificationrequest.html
-- |
-- | - `LaunchTemplateName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-ec2fleet-fleetlaunchtemplatespecificationrequest.html#cfn-ec2-ec2fleet-fleetlaunchtemplatespecificationrequest-launchtemplatename
-- | - `Version`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-ec2fleet-fleetlaunchtemplatespecificationrequest.html#cfn-ec2-ec2fleet-fleetlaunchtemplatespecificationrequest-version
-- | - `LaunchTemplateId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-ec2fleet-fleetlaunchtemplatespecificationrequest.html#cfn-ec2-ec2fleet-fleetlaunchtemplatespecificationrequest-launchtemplateid
type FleetLaunchTemplateSpecificationRequest =
  { "LaunchTemplateName" :: Maybe String
  , "Version" :: Maybe String
  , "LaunchTemplateId" :: Maybe String
  }

fleetLaunchTemplateSpecificationRequest :: FleetLaunchTemplateSpecificationRequest
fleetLaunchTemplateSpecificationRequest =
  { "LaunchTemplateName" : Nothing
  , "Version" : Nothing
  , "LaunchTemplateId" : Nothing
  }