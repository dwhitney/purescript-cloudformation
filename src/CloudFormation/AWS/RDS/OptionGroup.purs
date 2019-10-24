module CloudFormation.AWS.RDS.OptionGroup where 

import CloudFormation.Tag (Tag)
import Data.Maybe (Maybe(..))
import Record (merge)


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
type OptionGroup =
  { "EngineName" :: String
  , "MajorEngineVersion" :: String
  , "OptionConfigurations" :: Array OptionConfiguration
  , "OptionGroupDescription" :: String
  , "Tags" :: Maybe (Array Tag)
  }

optionGroup :: { "EngineName" :: String, "MajorEngineVersion" :: String, "OptionConfigurations" :: Array OptionConfiguration, "OptionGroupDescription" :: String } -> OptionGroup
optionGroup required =
  merge required
    { "Tags" : Nothing
    }

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
  { "OptionName" :: String
  , "DBSecurityGroupMemberships" :: Maybe (Array String)
  , "OptionSettings" :: Maybe (Array OptionSetting)
  , "OptionVersion" :: Maybe String
  , "Port" :: Maybe Int
  , "VpcSecurityGroupMemberships" :: Maybe (Array String)
  }

optionConfiguration :: { "OptionName" :: String } -> OptionConfiguration
optionConfiguration required =
  merge required
    { "DBSecurityGroupMemberships" : Nothing
    , "OptionSettings" : Nothing
    , "OptionVersion" : Nothing
    , "Port" : Nothing
    , "VpcSecurityGroupMemberships" : Nothing
    }

-- | `AWS::RDS::OptionGroup.OptionSetting`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-optiongroup-optionconfigurations-optionsettings.html
-- |
-- | - `Name`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-optiongroup-optionconfigurations-optionsettings.html#cfn-rds-optiongroup-optionconfigurations-optionsettings-name
-- | - `Value`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-optiongroup-optionconfigurations-optionsettings.html#cfn-rds-optiongroup-optionconfigurations-optionsettings-value
type OptionSetting =
  { "Name" :: Maybe String
  , "Value" :: Maybe String
  }

optionSetting :: OptionSetting
optionSetting =
  { "Name" : Nothing
  , "Value" : Nothing
  }