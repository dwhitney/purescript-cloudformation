module CloudFormation.AWS.AppStream.Fleet where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import CloudFormation.Tag (Tag)
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


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
newtype Fleet = Fleet
  { "ComputeCapacity" :: Value ComputeCapacity
  , "InstanceType" :: Value String
  , "Description" :: Maybe (Value String)
  , "VpcConfig" :: Maybe (Value VpcConfig)
  , "FleetType" :: Maybe (Value String)
  , "EnableDefaultInternetAccess" :: Maybe (Value Boolean)
  , "DomainJoinInfo" :: Maybe (Value DomainJoinInfo)
  , "Name" :: Maybe (Value String)
  , "ImageName" :: Maybe (Value String)
  , "MaxUserDurationInSeconds" :: Maybe (Value Int)
  , "IdleDisconnectTimeoutInSeconds" :: Maybe (Value Int)
  , "DisconnectTimeoutInSeconds" :: Maybe (Value Int)
  , "DisplayName" :: Maybe (Value String)
  , "Tags" :: Maybe (Value (Array Tag))
  , "ImageArn" :: Maybe (Value String)
  }

derive instance newtypeFleet :: Newtype Fleet _
derive newtype instance writeFleet :: WriteForeign Fleet
instance resourceFleet :: Resource Fleet where type_ _ = "AWS::AppStream::Fleet"

fleet :: { "ComputeCapacity" :: Value ComputeCapacity, "InstanceType" :: Value String } -> Fleet
fleet required = Fleet
  (merge required
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
    })

-- | `AWS::AppStream::Fleet.VpcConfig`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appstream-fleet-vpcconfig.html
-- |
-- | - `SubnetIds`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appstream-fleet-vpcconfig.html#cfn-appstream-fleet-vpcconfig-subnetids
-- | - `SecurityGroupIds`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appstream-fleet-vpcconfig.html#cfn-appstream-fleet-vpcconfig-securitygroupids
type VpcConfig =
  { "SubnetIds" :: Maybe (Value (Array String))
  , "SecurityGroupIds" :: Maybe (Value (Array String))
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
  { "DesiredInstances" :: Value Int
  }

computeCapacity :: { "DesiredInstances" :: Value Int } -> ComputeCapacity
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
  { "OrganizationalUnitDistinguishedName" :: Maybe (Value String)
  , "DirectoryName" :: Maybe (Value String)
  }

domainJoinInfo :: DomainJoinInfo
domainJoinInfo =
  { "OrganizationalUnitDistinguishedName" : Nothing
  , "DirectoryName" : Nothing
  }