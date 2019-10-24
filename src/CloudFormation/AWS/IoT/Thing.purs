module CloudFormation.AWS.IoT.Thing where 

import Data.Maybe (Maybe(..))
import Foreign.Object (Object)


-- | `AWS::IoT::Thing`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot-thing.html-- |
-- | - `AttributePayload`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot-thing.html#cfn-iot-thing-attributepayload
-- | - `ThingName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot-thing.html#cfn-iot-thing-thingname
type Thing =
  { "AttributePayload" :: Maybe AttributePayload
  , "ThingName" :: Maybe String
  }

thing :: Thing
thing =
  { "AttributePayload" : Nothing
  , "ThingName" : Nothing
  }

-- | `AWS::IoT::Thing.AttributePayload`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-thing-attributepayload.html-- |
-- | - `Attributes`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-thing-attributepayload.html#cfn-iot-thing-attributepayload-attributes
type AttributePayload =
  { "Attributes" :: Maybe (Object String)
  }

attributePayload :: AttributePayload
attributePayload =
  { "Attributes" : Nothing
  }