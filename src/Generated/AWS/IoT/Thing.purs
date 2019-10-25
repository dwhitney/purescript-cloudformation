module CloudFormation.AWS.IoT.Thing where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)
import Foreign.Object (Object)


-- | `AWS::IoT::Thing`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot-thing.html
-- |
-- | - `AttributePayload`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot-thing.html#cfn-iot-thing-attributepayload
-- | - `ThingName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot-thing.html#cfn-iot-thing-thingname
newtype Thing = Thing
  { "AttributePayload" :: Maybe (Value AttributePayload)
  , "ThingName" :: Maybe (Value String)
  }

derive instance newtypeThing :: Newtype Thing _
derive newtype instance writeThing :: WriteForeign Thing
instance resourceThing :: Resource Thing where type_ _ = "AWS::IoT::Thing"

thing :: Thing
thing = Thing
  { "AttributePayload" : Nothing
  , "ThingName" : Nothing
  }

-- | `AWS::IoT::Thing.AttributePayload`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-thing-attributepayload.html
-- |
-- | - `Attributes`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-thing-attributepayload.html#cfn-iot-thing-attributepayload-attributes
type AttributePayload =
  { "Attributes" :: Maybe (Value (Object String))
  }

attributePayload :: AttributePayload
attributePayload =
  { "Attributes" : Nothing
  }