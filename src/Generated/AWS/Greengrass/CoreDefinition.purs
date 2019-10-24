module CloudFormation.AWS.Greengrass.CoreDefinition where 

import Data.Maybe (Maybe(..))
import CloudFormation (Json) as CF
import Record (merge)
import CloudFormation (class Resource)
import Data.Newtype (class Newtype)


-- | `AWS::Greengrass::CoreDefinition`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-greengrass-coredefinition.html
-- |
-- | - `InitialVersion`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-greengrass-coredefinition.html#cfn-greengrass-coredefinition-initialversion
-- | - `Tags`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-greengrass-coredefinition.html#cfn-greengrass-coredefinition-tags
-- | - `Name`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-greengrass-coredefinition.html#cfn-greengrass-coredefinition-name
newtype CoreDefinition = CoreDefinition
  { "Name" :: String
  , "InitialVersion" :: Maybe CoreDefinitionVersion
  , "Tags" :: Maybe CF.Json
  }

derive instance newtypeCoreDefinition :: Newtype CoreDefinition _
instance resourceCoreDefinition :: Resource CoreDefinition where type_ _ = "AWS::Greengrass::CoreDefinition"

coreDefinition :: { "Name" :: String } -> CoreDefinition
coreDefinition required = CoreDefinition
  (merge required
    { "InitialVersion" : Nothing
    , "Tags" : Nothing
    })

-- | `AWS::Greengrass::CoreDefinition.CoreDefinitionVersion`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-coredefinition-coredefinitionversion.html
-- |
-- | - `Cores`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-coredefinition-coredefinitionversion.html#cfn-greengrass-coredefinition-coredefinitionversion-cores
type CoreDefinitionVersion =
  { "Cores" :: Array Core
  }

coreDefinitionVersion :: { "Cores" :: Array Core } -> CoreDefinitionVersion
coreDefinitionVersion required =
  required

-- | `AWS::Greengrass::CoreDefinition.Core`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-coredefinition-core.html
-- |
-- | - `SyncShadow`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-coredefinition-core.html#cfn-greengrass-coredefinition-core-syncshadow
-- | - `ThingArn`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-coredefinition-core.html#cfn-greengrass-coredefinition-core-thingarn
-- | - `Id`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-coredefinition-core.html#cfn-greengrass-coredefinition-core-id
-- | - `CertificateArn`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-coredefinition-core.html#cfn-greengrass-coredefinition-core-certificatearn
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