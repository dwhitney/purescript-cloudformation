module CloudFormation.AWS.Greengrass.GroupVersion where 

import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation (class Resource)
import Data.Newtype (class Newtype)


-- | `AWS::Greengrass::GroupVersion`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-greengrass-groupversion.html
-- |
-- | - `LoggerDefinitionVersionArn`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-greengrass-groupversion.html#cfn-greengrass-groupversion-loggerdefinitionversionarn
-- | - `DeviceDefinitionVersionArn`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-greengrass-groupversion.html#cfn-greengrass-groupversion-devicedefinitionversionarn
-- | - `FunctionDefinitionVersionArn`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-greengrass-groupversion.html#cfn-greengrass-groupversion-functiondefinitionversionarn
-- | - `CoreDefinitionVersionArn`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-greengrass-groupversion.html#cfn-greengrass-groupversion-coredefinitionversionarn
-- | - `ResourceDefinitionVersionArn`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-greengrass-groupversion.html#cfn-greengrass-groupversion-resourcedefinitionversionarn
-- | - `ConnectorDefinitionVersionArn`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-greengrass-groupversion.html#cfn-greengrass-groupversion-connectordefinitionversionarn
-- | - `SubscriptionDefinitionVersionArn`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-greengrass-groupversion.html#cfn-greengrass-groupversion-subscriptiondefinitionversionarn
-- | - `GroupId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-greengrass-groupversion.html#cfn-greengrass-groupversion-groupid
newtype GroupVersion = GroupVersion
  { "GroupId" :: String
  , "LoggerDefinitionVersionArn" :: Maybe String
  , "DeviceDefinitionVersionArn" :: Maybe String
  , "FunctionDefinitionVersionArn" :: Maybe String
  , "CoreDefinitionVersionArn" :: Maybe String
  , "ResourceDefinitionVersionArn" :: Maybe String
  , "ConnectorDefinitionVersionArn" :: Maybe String
  , "SubscriptionDefinitionVersionArn" :: Maybe String
  }

derive instance newtypeGroupVersion :: Newtype GroupVersion _
instance resourceGroupVersion :: Resource GroupVersion where type_ _ = "AWS::Greengrass::GroupVersion"

groupVersion :: { "GroupId" :: String } -> GroupVersion
groupVersion required = GroupVersion
  (merge required
    { "LoggerDefinitionVersionArn" : Nothing
    , "DeviceDefinitionVersionArn" : Nothing
    , "FunctionDefinitionVersionArn" : Nothing
    , "CoreDefinitionVersionArn" : Nothing
    , "ResourceDefinitionVersionArn" : Nothing
    , "ConnectorDefinitionVersionArn" : Nothing
    , "SubscriptionDefinitionVersionArn" : Nothing
    })