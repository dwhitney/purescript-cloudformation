module CloudFormation.AWS.IoT.ThingPrincipalAttachment where 




-- | `AWS::IoT::ThingPrincipalAttachment`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot-thingprincipalattachment.html
-- |
-- | - `Principal`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot-thingprincipalattachment.html#cfn-iot-thingprincipalattachment-principal
-- | - `ThingName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot-thingprincipalattachment.html#cfn-iot-thingprincipalattachment-thingname
type ThingPrincipalAttachment =
  { "Principal" :: String
  , "ThingName" :: String
  }

thingPrincipalAttachment :: { "Principal" :: String, "ThingName" :: String } -> ThingPrincipalAttachment
thingPrincipalAttachment required =
  required