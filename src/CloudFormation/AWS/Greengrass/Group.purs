module CloudFormation.AWS.Greengrass.Group where 

import Data.Maybe (Maybe(..))
import Foreign (Foreign)
import Record (merge)


-- | `AWS::Greengrass::Group`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-greengrass-group.html-- |
-- | - `InitialVersion`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-greengrass-group.html#cfn-greengrass-group-initialversion
-- | - `RoleArn`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-greengrass-group.html#cfn-greengrass-group-rolearn
-- | - `Tags`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-greengrass-group.html#cfn-greengrass-group-tags
-- | - `Name`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-greengrass-group.html#cfn-greengrass-group-name
type Group =
  { "Name" :: String
  , "InitialVersion" :: Maybe GroupVersion
  , "RoleArn" :: Maybe String
  , "Tags" :: Maybe Foreign
  }

group :: { "Name" :: String } -> Group
group required =
  merge required
    { "InitialVersion" : Nothing
    , "RoleArn" : Nothing
    , "Tags" : Nothing
    }

-- | `AWS::Greengrass::Group.GroupVersion`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-group-groupversion.html-- |
-- | - `LoggerDefinitionVersionArn`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-group-groupversion.html#cfn-greengrass-group-groupversion-loggerdefinitionversionarn
-- | - `DeviceDefinitionVersionArn`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-group-groupversion.html#cfn-greengrass-group-groupversion-devicedefinitionversionarn
-- | - `FunctionDefinitionVersionArn`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-group-groupversion.html#cfn-greengrass-group-groupversion-functiondefinitionversionarn
-- | - `CoreDefinitionVersionArn`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-group-groupversion.html#cfn-greengrass-group-groupversion-coredefinitionversionarn
-- | - `ResourceDefinitionVersionArn`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-group-groupversion.html#cfn-greengrass-group-groupversion-resourcedefinitionversionarn
-- | - `ConnectorDefinitionVersionArn`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-group-groupversion.html#cfn-greengrass-group-groupversion-connectordefinitionversionarn
-- | - `SubscriptionDefinitionVersionArn`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-group-groupversion.html#cfn-greengrass-group-groupversion-subscriptiondefinitionversionarn
type GroupVersion =
  { "LoggerDefinitionVersionArn" :: Maybe String
  , "DeviceDefinitionVersionArn" :: Maybe String
  , "FunctionDefinitionVersionArn" :: Maybe String
  , "CoreDefinitionVersionArn" :: Maybe String
  , "ResourceDefinitionVersionArn" :: Maybe String
  , "ConnectorDefinitionVersionArn" :: Maybe String
  , "SubscriptionDefinitionVersionArn" :: Maybe String
  }

groupVersion :: GroupVersion
groupVersion =
  { "LoggerDefinitionVersionArn" : Nothing
  , "DeviceDefinitionVersionArn" : Nothing
  , "FunctionDefinitionVersionArn" : Nothing
  , "CoreDefinitionVersionArn" : Nothing
  , "ResourceDefinitionVersionArn" : Nothing
  , "ConnectorDefinitionVersionArn" : Nothing
  , "SubscriptionDefinitionVersionArn" : Nothing
  }