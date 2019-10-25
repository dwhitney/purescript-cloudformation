module CloudFormation.AWS.Greengrass.GroupVersion where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


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
  { "GroupId" :: Value String
  , "LoggerDefinitionVersionArn" :: Maybe (Value String)
  , "DeviceDefinitionVersionArn" :: Maybe (Value String)
  , "FunctionDefinitionVersionArn" :: Maybe (Value String)
  , "CoreDefinitionVersionArn" :: Maybe (Value String)
  , "ResourceDefinitionVersionArn" :: Maybe (Value String)
  , "ConnectorDefinitionVersionArn" :: Maybe (Value String)
  , "SubscriptionDefinitionVersionArn" :: Maybe (Value String)
  }

derive instance newtypeGroupVersion :: Newtype GroupVersion _
derive newtype instance writeGroupVersion :: WriteForeign GroupVersion
instance resourceGroupVersion :: Resource GroupVersion where type_ _ = "AWS::Greengrass::GroupVersion"

groupVersion :: { "GroupId" :: Value String } -> GroupVersion
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