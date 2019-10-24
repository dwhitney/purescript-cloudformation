module CloudFormation.AWS.IoT.ThingPrincipalAttachment where 

import CloudFormation (class Resource)
import Data.Newtype (class Newtype)


-- | `AWS::IoT::ThingPrincipalAttachment`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot-thingprincipalattachment.html
-- |
-- | - `Principal`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot-thingprincipalattachment.html#cfn-iot-thingprincipalattachment-principal
-- | - `ThingName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot-thingprincipalattachment.html#cfn-iot-thingprincipalattachment-thingname
newtype ThingPrincipalAttachment = ThingPrincipalAttachment
  { "Principal" :: String
  , "ThingName" :: String
  }

derive instance newtypeThingPrincipalAttachment :: Newtype ThingPrincipalAttachment _
instance resourceThingPrincipalAttachment :: Resource ThingPrincipalAttachment where type_ _ = "AWS::IoT::ThingPrincipalAttachment"

thingPrincipalAttachment :: { "Principal" :: String, "ThingName" :: String } -> ThingPrincipalAttachment
thingPrincipalAttachment required = ThingPrincipalAttachment
  required