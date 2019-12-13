module CloudFormation.AWS.AppStream.ImageBuilder where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import CloudFormation.Tag (Tag)
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


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
-- | - `AccessEndpoints`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appstream-imagebuilder.html#cfn-appstream-imagebuilder-accessendpoints
newtype ImageBuilder = ImageBuilder
  { "InstanceType" :: Value String
  , "ImageName" :: Maybe (Value String)
  , "Description" :: Maybe (Value String)
  , "VpcConfig" :: Maybe (Value VpcConfig)
  , "EnableDefaultInternetAccess" :: Maybe (Value Boolean)
  , "DisplayName" :: Maybe (Value String)
  , "DomainJoinInfo" :: Maybe (Value DomainJoinInfo)
  , "AppstreamAgentVersion" :: Maybe (Value String)
  , "Tags" :: Maybe (Value (Array Tag))
  , "Name" :: Maybe (Value String)
  , "ImageArn" :: Maybe (Value String)
  , "AccessEndpoints" :: Maybe (Value (Array AccessEndpoint))
  }

derive instance newtypeImageBuilder :: Newtype ImageBuilder _
derive newtype instance writeImageBuilder :: WriteForeign ImageBuilder
instance resourceImageBuilder :: Resource ImageBuilder where type_ _ = "AWS::AppStream::ImageBuilder"

imageBuilder :: { "InstanceType" :: Value String } -> ImageBuilder
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
    , "AccessEndpoints" : Nothing
    })

-- | `AWS::AppStream::ImageBuilder.DomainJoinInfo`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appstream-imagebuilder-domainjoininfo.html
-- |
-- | - `OrganizationalUnitDistinguishedName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appstream-imagebuilder-domainjoininfo.html#cfn-appstream-imagebuilder-domainjoininfo-organizationalunitdistinguishedname
-- | - `DirectoryName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appstream-imagebuilder-domainjoininfo.html#cfn-appstream-imagebuilder-domainjoininfo-directoryname
type DomainJoinInfo =
  { "OrganizationalUnitDistinguishedName" :: Maybe (Value String)
  , "DirectoryName" :: Maybe (Value String)
  }

domainJoinInfo :: DomainJoinInfo
domainJoinInfo =
  { "OrganizationalUnitDistinguishedName" : Nothing
  , "DirectoryName" : Nothing
  }

-- | `AWS::AppStream::ImageBuilder.AccessEndpoint`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appstream-imagebuilder-accessendpoint.html
-- |
-- | - `EndpointType`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appstream-imagebuilder-accessendpoint.html#cfn-appstream-imagebuilder-accessendpoint-endpointtype
-- | - `VpceId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appstream-imagebuilder-accessendpoint.html#cfn-appstream-imagebuilder-accessendpoint-vpceid
type AccessEndpoint =
  { "EndpointType" :: Value String
  , "VpceId" :: Value String
  }

accessEndpoint :: { "EndpointType" :: Value String, "VpceId" :: Value String } -> AccessEndpoint
accessEndpoint required =
  required

-- | `AWS::AppStream::ImageBuilder.VpcConfig`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appstream-imagebuilder-vpcconfig.html
-- |
-- | - `SecurityGroupIds`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appstream-imagebuilder-vpcconfig.html#cfn-appstream-imagebuilder-vpcconfig-securitygroupids
-- | - `SubnetIds`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appstream-imagebuilder-vpcconfig.html#cfn-appstream-imagebuilder-vpcconfig-subnetids
type VpcConfig =
  { "SecurityGroupIds" :: Maybe (Value (Array String))
  , "SubnetIds" :: Maybe (Value (Array String))
  }

vpcConfig :: VpcConfig
vpcConfig =
  { "SecurityGroupIds" : Nothing
  , "SubnetIds" : Nothing
  }