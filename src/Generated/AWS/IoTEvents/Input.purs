module CloudFormation.AWS.IoTEvents.Input where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import CloudFormation.Tag (Tag)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


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
  { "InputDefinition" :: Maybe (Value InputDefinition)
  , "InputName" :: Maybe (Value String)
  , "InputDescription" :: Maybe (Value String)
  , "Tags" :: Maybe (Value (Array Tag))
  }

derive instance newtypeInput :: Newtype Input _
derive newtype instance writeInput :: WriteForeign Input
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
  { "Attributes" :: Maybe (Value (Array Attribute))
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
  { "JsonPath" :: Maybe (Value String)
  }

attribute :: Attribute
attribute =
  { "JsonPath" : Nothing
  }