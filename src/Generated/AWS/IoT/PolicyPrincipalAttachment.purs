module CloudFormation.AWS.IoT.PolicyPrincipalAttachment where 

import CloudFormation (class Resource)
import Data.Newtype (class Newtype)


-- | `AWS::IoT::PolicyPrincipalAttachment`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot-policyprincipalattachment.html
-- |
-- | - `PolicyName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot-policyprincipalattachment.html#cfn-iot-policyprincipalattachment-policyname
-- | - `Principal`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot-policyprincipalattachment.html#cfn-iot-policyprincipalattachment-principal
newtype PolicyPrincipalAttachment = PolicyPrincipalAttachment
  { "PolicyName" :: String
  , "Principal" :: String
  }

derive instance newtypePolicyPrincipalAttachment :: Newtype PolicyPrincipalAttachment _
instance resourcePolicyPrincipalAttachment :: Resource PolicyPrincipalAttachment where type_ _ = "AWS::IoT::PolicyPrincipalAttachment"

policyPrincipalAttachment :: { "PolicyName" :: String, "Principal" :: String } -> PolicyPrincipalAttachment
policyPrincipalAttachment required = PolicyPrincipalAttachment
  required