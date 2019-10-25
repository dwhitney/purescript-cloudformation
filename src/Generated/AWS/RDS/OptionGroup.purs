module CloudFormation.AWS.RDS.OptionGroup where 

import CloudFormation (Value)
import CloudFormation.Tag (Tag)
import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


-- | `AWS::RDS::OptionGroup`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-optiongroup.html
-- |
-- | - `EngineName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-optiongroup.html#cfn-rds-optiongroup-enginename
-- | - `MajorEngineVersion`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-optiongroup.html#cfn-rds-optiongroup-majorengineversion
-- | - `OptionConfigurations`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-optiongroup.html#cfn-rds-optiongroup-optionconfigurations
-- | - `OptionGroupDescription`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-optiongroup.html#cfn-rds-optiongroup-optiongroupdescription
-- | - `Tags`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-optiongroup.html#cfn-rds-optiongroup-tags
newtype OptionGroup = OptionGroup
  { "EngineName" :: Value String
  , "MajorEngineVersion" :: Value String
  , "OptionConfigurations" :: Value (Array OptionConfiguration)
  , "OptionGroupDescription" :: Value String
  , "Tags" :: Maybe (Value (Array Tag))
  }

derive instance newtypeOptionGroup :: Newtype OptionGroup _
derive newtype instance writeOptionGroup :: WriteForeign OptionGroup
instance resourceOptionGroup :: Resource OptionGroup where type_ _ = "AWS::RDS::OptionGroup"

optionGroup :: { "EngineName" :: Value String, "MajorEngineVersion" :: Value String, "OptionConfigurations" :: Value (Array OptionConfiguration), "OptionGroupDescription" :: Value String } -> OptionGroup
optionGroup required = OptionGroup
  (merge required
    { "Tags" : Nothing
    })

-- | `AWS::RDS::OptionGroup.OptionConfiguration`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-optiongroup-optionconfigurations.html
-- |
-- | - `DBSecurityGroupMemberships`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-optiongroup-optionconfigurations.html#cfn-rds-optiongroup-optionconfigurations-dbsecuritygroupmemberships
-- | - `OptionName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-optiongroup-optionconfigurations.html#cfn-rds-optiongroup-optionconfigurations-optionname
-- | - `OptionSettings`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-optiongroup-optionconfigurations.html#cfn-rds-optiongroup-optionconfigurations-optionsettings
-- | - `OptionVersion`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-optiongroup-optionconfigurations.html#cfn-rds-optiongroup-optionconfiguration-optionversion
-- | - `Port`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-optiongroup-optionconfigurations.html#cfn-rds-optiongroup-optionconfigurations-port
-- | - `VpcSecurityGroupMemberships`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-optiongroup-optionconfigurations.html#cfn-rds-optiongroup-optionconfigurations-vpcsecuritygroupmemberships
type OptionConfiguration =
  { "OptionName" :: Value String
  , "DBSecurityGroupMemberships" :: Maybe (Value (Array String))
  , "OptionSettings" :: Maybe (Value (Array OptionSetting))
  , "OptionVersion" :: Maybe (Value String)
  , "Port" :: Maybe (Value Int)
  , "VpcSecurityGroupMemberships" :: Maybe (Value (Array String))
  }

optionConfiguration :: { "OptionName" :: Value String } -> OptionConfiguration
optionConfiguration required =
  (merge required
    { "DBSecurityGroupMemberships" : Nothing
    , "OptionSettings" : Nothing
    , "OptionVersion" : Nothing
    , "Port" : Nothing
    , "VpcSecurityGroupMemberships" : Nothing
    })

-- | `AWS::RDS::OptionGroup.OptionSetting`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-optiongroup-optionconfigurations-optionsettings.html
-- |
-- | - `Name`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-optiongroup-optionconfigurations-optionsettings.html#cfn-rds-optiongroup-optionconfigurations-optionsettings-name
-- | - `Value`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-optiongroup-optionconfigurations-optionsettings.html#cfn-rds-optiongroup-optionconfigurations-optionsettings-value
type OptionSetting =
  { "Name" :: Maybe (Value String)
  , "Value" :: Maybe (Value String)
  }

optionSetting :: OptionSetting
optionSetting =
  { "Name" : Nothing
  , "Value" : Nothing
  }