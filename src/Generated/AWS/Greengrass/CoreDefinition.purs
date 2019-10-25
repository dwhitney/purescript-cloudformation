module CloudFormation.AWS.Greengrass.CoreDefinition where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import CloudFormation (Json) as CF
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


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
  { "Name" :: Value String
  , "InitialVersion" :: Maybe (Value CoreDefinitionVersion)
  , "Tags" :: Maybe (Value CF.Json)
  }

derive instance newtypeCoreDefinition :: Newtype CoreDefinition _
derive newtype instance writeCoreDefinition :: WriteForeign CoreDefinition
instance resourceCoreDefinition :: Resource CoreDefinition where type_ _ = "AWS::Greengrass::CoreDefinition"

coreDefinition :: { "Name" :: Value String } -> CoreDefinition
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
  { "Cores" :: Value (Array Core)
  }

coreDefinitionVersion :: { "Cores" :: Value (Array Core) } -> CoreDefinitionVersion
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
  { "ThingArn" :: Value String
  , "Id" :: Value String
  , "CertificateArn" :: Value String
  , "SyncShadow" :: Maybe (Value Boolean)
  }

core :: { "ThingArn" :: Value String, "Id" :: Value String, "CertificateArn" :: Value String } -> Core
core required =
  (merge required
    { "SyncShadow" : Nothing
    })