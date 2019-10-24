module CloudFormation.AWS.IoTEvents.Input where 

import Data.Maybe (Maybe(..))
import CloudFormation.Tag (Tag)
import CloudFormation (class Resource)
import Data.Newtype (class Newtype)


-- | `AWS::IoTEvents::Input`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iotevents-input.html
-- |
-- | - `InputDefinition`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iotevents-input.html#cfn-iotevents-input-inputdefinition
-- | - `InputName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iotevents-input.html#cfn-iotevents-input-inputname
-- | - `InputDescription`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iotevents-input.html#cfn-iotevents-input-inputdescription
-- | - `Tags`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iotevents-input.html#cfn-iotevents-input-tags
newtype Input = Input
  { "InputDefinition" :: Maybe InputDefinition
  , "InputName" :: Maybe String
  , "InputDescription" :: Maybe String
  , "Tags" :: Maybe (Array Tag)
  }

derive instance newtypeInput :: Newtype Input _
instance resourceInput :: Resource Input where type_ _ = "AWS::IoTEvents::Input"

input :: Input
input = Input
  { "InputDefinition" : Nothing
  , "InputName" : Nothing
  , "InputDescription" : Nothing
  , "Tags" : Nothing
  }

-- | `AWS::IoTEvents::Input.InputDefinition`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-input-inputdefinition.html
-- |
-- | - `Attributes`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-input-inputdefinition.html#cfn-iotevents-input-inputdefinition-attributes
type InputDefinition =
  { "Attributes" :: Maybe (Array Attribute)
  }

inputDefinition :: InputDefinition
inputDefinition =
  { "Attributes" : Nothing
  }

-- | `AWS::IoTEvents::Input.Attribute`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-input-attribute.html
-- |
-- | - `JsonPath`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-input-attribute.html#cfn-iotevents-input-attribute-jsonpath
type Attribute =
  { "JsonPath" :: Maybe String
  }

attribute :: Attribute
attribute =
  { "JsonPath" : Nothing
  }