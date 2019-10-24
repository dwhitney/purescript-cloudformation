module CloudFormation.AWS.IoT.PolicyPrincipalAttachment where 




-- | `AWS::IoT::PolicyPrincipalAttachment`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot-policyprincipalattachment.html-- |
-- | - `PolicyName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot-policyprincipalattachment.html#cfn-iot-policyprincipalattachment-policyname
-- | - `Principal`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot-policyprincipalattachment.html#cfn-iot-policyprincipalattachment-principal
type PolicyPrincipalAttachment =
  { "PolicyName" :: String
  , "Principal" :: String
  }

policyPrincipalAttachment :: { "PolicyName" :: String, "Principal" :: String } -> PolicyPrincipalAttachment
policyPrincipalAttachment required =
  required