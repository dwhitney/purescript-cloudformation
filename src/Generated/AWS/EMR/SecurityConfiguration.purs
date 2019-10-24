module CloudFormation.AWS.EMR.SecurityConfiguration where 

import Data.Maybe (Maybe(..))
import CloudFormation (Json)
import Record (merge)


-- | `AWS::EMR::SecurityConfiguration`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-emr-securityconfiguration.html
-- |
-- | - `Name`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-emr-securityconfiguration.html#cfn-emr-securityconfiguration-name
-- | - `SecurityConfiguration`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-emr-securityconfiguration.html#cfn-emr-securityconfiguration-securityconfiguration
type SecurityConfiguration =
  { "SecurityConfiguration" :: Json
  , "Name" :: Maybe String
  }

securityConfiguration :: { "SecurityConfiguration" :: Json } -> SecurityConfiguration
securityConfiguration required =
  merge required
    { "Name" : Nothing
    }