module CloudFormation.AWS.EMR.SecurityConfiguration where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import CloudFormation (Json) as CF
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


-- | `AWS::EMR::SecurityConfiguration`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-emr-securityconfiguration.html
-- |
-- | - `Name`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-emr-securityconfiguration.html#cfn-emr-securityconfiguration-name
-- | - `SecurityConfiguration`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-emr-securityconfiguration.html#cfn-emr-securityconfiguration-securityconfiguration
newtype SecurityConfiguration = SecurityConfiguration
  { "SecurityConfiguration" :: Value CF.Json
  , "Name" :: Maybe (Value String)
  }

derive instance newtypeSecurityConfiguration :: Newtype SecurityConfiguration _
derive newtype instance writeSecurityConfiguration :: WriteForeign SecurityConfiguration
instance resourceSecurityConfiguration :: Resource SecurityConfiguration where type_ _ = "AWS::EMR::SecurityConfiguration"

securityConfiguration :: { "SecurityConfiguration" :: Value CF.Json } -> SecurityConfiguration
securityConfiguration required = SecurityConfiguration
  (merge required
    { "Name" : Nothing
    })