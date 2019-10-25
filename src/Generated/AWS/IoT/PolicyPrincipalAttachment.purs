module CloudFormation.AWS.IoT.PolicyPrincipalAttachment where 

import CloudFormation (Value)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


-- | `AWS::IoT::PolicyPrincipalAttachment`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot-policyprincipalattachment.html
-- |
-- | - `PolicyName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot-policyprincipalattachment.html#cfn-iot-policyprincipalattachment-policyname
-- | - `Principal`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot-policyprincipalattachment.html#cfn-iot-policyprincipalattachment-principal
newtype PolicyPrincipalAttachment = PolicyPrincipalAttachment
  { "PolicyName" :: Value String
  , "Principal" :: Value String
  }

derive instance newtypePolicyPrincipalAttachment :: Newtype PolicyPrincipalAttachment _
derive newtype instance writePolicyPrincipalAttachment :: WriteForeign PolicyPrincipalAttachment
instance resourcePolicyPrincipalAttachment :: Resource PolicyPrincipalAttachment where type_ _ = "AWS::IoT::PolicyPrincipalAttachment"

policyPrincipalAttachment :: { "PolicyName" :: Value String, "Principal" :: Value String } -> PolicyPrincipalAttachment
policyPrincipalAttachment required = PolicyPrincipalAttachment
  required