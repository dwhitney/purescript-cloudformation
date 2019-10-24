module CloudFormation.AWS.IoT.Thing where 

import Data.Maybe (Maybe(..))
import CloudFormation (class Resource)
import Data.Newtype (class Newtype)
import Foreign.Object (Object)


-- | `AWS::IoT::Thing`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot-thing.html
-- |
-- | - `AttributePayload`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot-thing.html#cfn-iot-thing-attributepayload
-- | - `ThingName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot-thing.html#cfn-iot-thing-thingname
newtype Thing = Thing
  { "AttributePayload" :: Maybe AttributePayload
  , "ThingName" :: Maybe String
  }

derive instance newtypeThing :: Newtype Thing _
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
  { "Attributes" :: Maybe (Object String)
  }

attributePayload :: AttributePayload
attributePayload =
  { "Attributes" : Nothing
  }