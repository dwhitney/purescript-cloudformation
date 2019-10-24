module CloudFormation.AWS.AppStream.ImageBuilder where 

import Data.Maybe (Maybe(..))
import CloudFormation.Tag (Tag)
import Record (merge)
import CloudFormation (class Resource)
import Data.Newtype (class Newtype)


-- | `AWS::AppStream::ImageBuilder`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appstream-imagebuilder.html
-- |
-- | - `ImageName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appstream-imagebuilder.html#cfn-appstream-imagebuilder-imagename
-- | - `Description`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appstream-imagebuilder.html#cfn-appstream-imagebuilder-description
-- | - `VpcConfig`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appstream-imagebuilder.html#cfn-appstream-imagebuilder-vpcconfig
-- | - `EnableDefaultInternetAccess`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appstream-imagebuilder.html#cfn-appstream-imagebuilder-enabledefaultinternetaccess
-- | - `DisplayName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appstream-imagebuilder.html#cfn-appstream-imagebuilder-displayname
-- | - `DomainJoinInfo`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appstream-imagebuilder.html#cfn-appstream-imagebuilder-domainjoininfo
-- | - `AppstreamAgentVersion`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appstream-imagebuilder.html#cfn-appstream-imagebuilder-appstreamagentversion
-- | - `InstanceType`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appstream-imagebuilder.html#cfn-appstream-imagebuilder-instancetype
-- | - `Tags`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appstream-imagebuilder.html#cfn-appstream-imagebuilder-tags
-- | - `Name`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appstream-imagebuilder.html#cfn-appstream-imagebuilder-name
-- | - `ImageArn`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appstream-imagebuilder.html#cfn-appstream-imagebuilder-imagearn
newtype ImageBuilder = ImageBuilder
  { "InstanceType" :: String
  , "ImageName" :: Maybe String
  , "Description" :: Maybe String
  , "VpcConfig" :: Maybe VpcConfig
  , "EnableDefaultInternetAccess" :: Maybe Boolean
  , "DisplayName" :: Maybe String
  , "DomainJoinInfo" :: Maybe DomainJoinInfo
  , "AppstreamAgentVersion" :: Maybe String
  , "Tags" :: Maybe (Array Tag)
  , "Name" :: Maybe String
  , "ImageArn" :: Maybe String
  }

derive instance newtypeImageBuilder :: Newtype ImageBuilder _
instance resourceImageBuilder :: Resource ImageBuilder where type_ _ = "AWS::AppStream::ImageBuilder"

imageBuilder :: { "InstanceType" :: String } -> ImageBuilder
imageBuilder required = ImageBuilder
  (merge required
    { "ImageName" : Nothing
    , "Description" : Nothing
    , "VpcConfig" : Nothing
    , "EnableDefaultInternetAccess" : Nothing
    , "DisplayName" : Nothing
    , "DomainJoinInfo" : Nothing
    , "AppstreamAgentVersion" : Nothing
    , "Tags" : Nothing
    , "Name" : Nothing
    , "ImageArn" : Nothing
    })

-- | `AWS::AppStream::ImageBuilder.DomainJoinInfo`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appstream-imagebuilder-domainjoininfo.html
-- |
-- | - `OrganizationalUnitDistinguishedName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appstream-imagebuilder-domainjoininfo.html#cfn-appstream-imagebuilder-domainjoininfo-organizationalunitdistinguishedname
-- | - `DirectoryName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appstream-imagebuilder-domainjoininfo.html#cfn-appstream-imagebuilder-domainjoininfo-directoryname
type DomainJoinInfo =
  { "OrganizationalUnitDistinguishedName" :: Maybe String
  , "DirectoryName" :: Maybe String
  }

domainJoinInfo :: DomainJoinInfo
domainJoinInfo =
  { "OrganizationalUnitDistinguishedName" : Nothing
  , "DirectoryName" : Nothing
  }

-- | `AWS::AppStream::ImageBuilder.VpcConfig`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appstream-imagebuilder-vpcconfig.html
-- |
-- | - `SecurityGroupIds`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appstream-imagebuilder-vpcconfig.html#cfn-appstream-imagebuilder-vpcconfig-securitygroupids
-- | - `SubnetIds`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appstream-imagebuilder-vpcconfig.html#cfn-appstream-imagebuilder-vpcconfig-subnetids
type VpcConfig =
  { "SecurityGroupIds" :: Maybe (Array String)
  , "SubnetIds" :: Maybe (Array String)
  }

vpcConfig :: VpcConfig
vpcConfig =
  { "SecurityGroupIds" : Nothing
  , "SubnetIds" : Nothing
  }