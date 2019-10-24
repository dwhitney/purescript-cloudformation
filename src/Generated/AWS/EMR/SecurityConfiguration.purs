module CloudFormation.AWS.EMR.SecurityConfiguration where 

import Data.Maybe (Maybe(..))
import CloudFormation (Json) as CF
import Record (merge)
import CloudFormation (class Resource)
import Data.Newtype (class Newtype)


-- | `AWS::EMR::SecurityConfiguration`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-emr-securityconfiguration.html
-- |
-- | - `Name`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-emr-securityconfiguration.html#cfn-emr-securityconfiguration-name
-- | - `SecurityConfiguration`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-emr-securityconfiguration.html#cfn-emr-securityconfiguration-securityconfiguration
newtype SecurityConfiguration = SecurityConfiguration
  { "SecurityConfiguration" :: CF.Json
  , "Name" :: Maybe String
  }

derive instance newtypeSecurityConfiguration :: Newtype SecurityConfiguration _
instance resourceSecurityConfiguration :: Resource SecurityConfiguration where type_ _ = "AWS::EMR::SecurityConfiguration"

securityConfiguration :: { "SecurityConfiguration" :: CF.Json } -> SecurityConfiguration
securityConfiguration required = SecurityConfiguration
  (merge required
    { "Name" : Nothing
    })