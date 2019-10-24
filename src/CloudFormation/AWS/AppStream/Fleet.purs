module CloudFormation.AWS.AppStream.Fleet where 

import Data.Maybe (Maybe(..))
import CloudFormation.Tag (Tag)
import Record (merge)


-- | `AWS::AppStream::Fleet`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appstream-fleet.html
-- |
-- | - `Description`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appstream-fleet.html#cfn-appstream-fleet-description
-- | - `ComputeCapacity`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appstream-fleet.html#cfn-appstream-fleet-computecapacity
-- | - `VpcConfig`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appstream-fleet.html#cfn-appstream-fleet-vpcconfig
-- | - `FleetType`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appstream-fleet.html#cfn-appstream-fleet-fleettype
-- | - `EnableDefaultInternetAccess`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appstream-fleet.html#cfn-appstream-fleet-enabledefaultinternetaccess
-- | - `DomainJoinInfo`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appstream-fleet.html#cfn-appstream-fleet-domainjoininfo
-- | - `Name`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appstream-fleet.html#cfn-appstream-fleet-name
-- | - `ImageName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appstream-fleet.html#cfn-appstream-fleet-imagename
-- | - `MaxUserDurationInSeconds`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appstream-fleet.html#cfn-appstream-fleet-maxuserdurationinseconds
-- | - `IdleDisconnectTimeoutInSeconds`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appstream-fleet.html#cfn-appstream-fleet-idledisconnecttimeoutinseconds
-- | - `DisconnectTimeoutInSeconds`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appstream-fleet.html#cfn-appstream-fleet-disconnecttimeoutinseconds
-- | - `DisplayName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appstream-fleet.html#cfn-appstream-fleet-displayname
-- | - `InstanceType`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appstream-fleet.html#cfn-appstream-fleet-instancetype
-- | - `Tags`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appstream-fleet.html#cfn-appstream-fleet-tags
-- | - `ImageArn`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appstream-fleet.html#cfn-appstream-fleet-imagearn
type Fleet =
  { "ComputeCapacity" :: ComputeCapacity
  , "InstanceType" :: String
  , "Description" :: Maybe String
  , "VpcConfig" :: Maybe VpcConfig
  , "FleetType" :: Maybe String
  , "EnableDefaultInternetAccess" :: Maybe Boolean
  , "DomainJoinInfo" :: Maybe DomainJoinInfo
  , "Name" :: Maybe String
  , "ImageName" :: Maybe String
  , "MaxUserDurationInSeconds" :: Maybe Int
  , "IdleDisconnectTimeoutInSeconds" :: Maybe Int
  , "DisconnectTimeoutInSeconds" :: Maybe Int
  , "DisplayName" :: Maybe String
  , "Tags" :: Maybe (Array Tag)
  , "ImageArn" :: Maybe String
  }

fleet :: { "ComputeCapacity" :: ComputeCapacity, "InstanceType" :: String } -> Fleet
fleet required =
  merge required
    { "Description" : Nothing
    , "VpcConfig" : Nothing
    , "FleetType" : Nothing
    , "EnableDefaultInternetAccess" : Nothing
    , "DomainJoinInfo" : Nothing
    , "Name" : Nothing
    , "ImageName" : Nothing
    , "MaxUserDurationInSeconds" : Nothing
    , "IdleDisconnectTimeoutInSeconds" : Nothing
    , "DisconnectTimeoutInSeconds" : Nothing
    , "DisplayName" : Nothing
    , "Tags" : Nothing
    , "ImageArn" : Nothing
    }

-- | `AWS::AppStream::Fleet.VpcConfig`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appstream-fleet-vpcconfig.html
-- |
-- | - `SubnetIds`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appstream-fleet-vpcconfig.html#cfn-appstream-fleet-vpcconfig-subnetids
-- | - `SecurityGroupIds`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appstream-fleet-vpcconfig.html#cfn-appstream-fleet-vpcconfig-securitygroupids
type VpcConfig =
  { "SubnetIds" :: Maybe (Array String)
  , "SecurityGroupIds" :: Maybe (Array String)
  }

vpcConfig :: VpcConfig
vpcConfig =
  { "SubnetIds" : Nothing
  , "SecurityGroupIds" : Nothing
  }

-- | `AWS::AppStream::Fleet.ComputeCapacity`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appstream-fleet-computecapacity.html
-- |
-- | - `DesiredInstances`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appstream-fleet-computecapacity.html#cfn-appstream-fleet-computecapacity-desiredinstances
type ComputeCapacity =
  { "DesiredInstances" :: Int
  }

computeCapacity :: { "DesiredInstances" :: Int } -> ComputeCapacity
computeCapacity required =
  required

-- | `AWS::AppStream::Fleet.DomainJoinInfo`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appstream-fleet-domainjoininfo.html
-- |
-- | - `OrganizationalUnitDistinguishedName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appstream-fleet-domainjoininfo.html#cfn-appstream-fleet-domainjoininfo-organizationalunitdistinguishedname
-- | - `DirectoryName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appstream-fleet-domainjoininfo.html#cfn-appstream-fleet-domainjoininfo-directoryname
type DomainJoinInfo =
  { "OrganizationalUnitDistinguishedName" :: Maybe String
  , "DirectoryName" :: Maybe String
  }

domainJoinInfo :: DomainJoinInfo
domainJoinInfo =
  { "OrganizationalUnitDistinguishedName" : Nothing
  , "DirectoryName" : Nothing
  }