module CloudFormation.AWS.Greengrass.CoreDefinitionVersion where 

import CloudFormation (class Resource)
import Data.Newtype (class Newtype)
import Data.Maybe (Maybe(..))
import Record (merge)


-- | `AWS::Greengrass::CoreDefinitionVersion`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-greengrass-coredefinitionversion.html
-- |
-- | - `Cores`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-greengrass-coredefinitionversion.html#cfn-greengrass-coredefinitionversion-cores
-- | - `CoreDefinitionId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-greengrass-coredefinitionversion.html#cfn-greengrass-coredefinitionversion-coredefinitionid
newtype CoreDefinitionVersion = CoreDefinitionVersion
  { "Cores" :: Array Core
  , "CoreDefinitionId" :: String
  }

derive instance newtypeCoreDefinitionVersion :: Newtype CoreDefinitionVersion _
instance resourceCoreDefinitionVersion :: Resource CoreDefinitionVersion where type_ _ = "AWS::Greengrass::CoreDefinitionVersion"

coreDefinitionVersion :: { "Cores" :: Array Core, "CoreDefinitionId" :: String } -> CoreDefinitionVersion
coreDefinitionVersion required = CoreDefinitionVersion
  required

-- | `AWS::Greengrass::CoreDefinitionVersion.Core`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-coredefinitionversion-core.html
-- |
-- | - `SyncShadow`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-coredefinitionversion-core.html#cfn-greengrass-coredefinitionversion-core-syncshadow
-- | - `ThingArn`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-coredefinitionversion-core.html#cfn-greengrass-coredefinitionversion-core-thingarn
-- | - `Id`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-coredefinitionversion-core.html#cfn-greengrass-coredefinitionversion-core-id
-- | - `CertificateArn`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-coredefinitionversion-core.html#cfn-greengrass-coredefinitionversion-core-certificatearn
type Core =
  { "ThingArn" :: String
  , "Id" :: String
  , "CertificateArn" :: String
  , "SyncShadow" :: Maybe Boolean
  }

core :: { "ThingArn" :: String, "Id" :: String, "CertificateArn" :: String } -> Core
core required =
  (merge required
    { "SyncShadow" : Nothing
    })