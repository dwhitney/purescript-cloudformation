module CloudFormation.AWS.Greengrass.CoreDefinitionVersion where 

import CloudFormation (Value)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)
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
  { "Cores" :: Value (Array Core)
  , "CoreDefinitionId" :: Value String
  }

derive instance newtypeCoreDefinitionVersion :: Newtype CoreDefinitionVersion _
derive newtype instance writeCoreDefinitionVersion :: WriteForeign CoreDefinitionVersion
instance resourceCoreDefinitionVersion :: Resource CoreDefinitionVersion where type_ _ = "AWS::Greengrass::CoreDefinitionVersion"

coreDefinitionVersion :: { "Cores" :: Value (Array Core), "CoreDefinitionId" :: Value String } -> CoreDefinitionVersion
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