module CloudFormation.AWS.IoT.ThingPrincipalAttachment where 

import CloudFormation (Value)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


-- | `AWS::IoT::ThingPrincipalAttachment`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot-thingprincipalattachment.html
-- |
-- | - `Principal`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot-thingprincipalattachment.html#cfn-iot-thingprincipalattachment-principal
-- | - `ThingName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot-thingprincipalattachment.html#cfn-iot-thingprincipalattachment-thingname
newtype ThingPrincipalAttachment = ThingPrincipalAttachment
  { "Principal" :: Value String
  , "ThingName" :: Value String
  }

derive instance newtypeThingPrincipalAttachment :: Newtype ThingPrincipalAttachment _
derive newtype instance writeThingPrincipalAttachment :: WriteForeign ThingPrincipalAttachment
instance resourceThingPrincipalAttachment :: Resource ThingPrincipalAttachment where type_ _ = "AWS::IoT::ThingPrincipalAttachment"

thingPrincipalAttachment :: { "Principal" :: Value String, "ThingName" :: Value String } -> ThingPrincipalAttachment
thingPrincipalAttachment required = ThingPrincipalAttachment
  required