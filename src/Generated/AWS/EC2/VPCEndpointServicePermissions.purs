module CloudFormation.AWS.EC2.VPCEndpointServicePermissions where 

import Data.Maybe (Maybe(..))
import Record (merge)


-- | `AWS::EC2::VPCEndpointServicePermissions`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpcendpointservicepermissions.html
-- |
-- | - `AllowedPrincipals`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpcendpointservicepermissions.html#cfn-ec2-vpcendpointservicepermissions-allowedprincipals
-- | - `ServiceId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpcendpointservicepermissions.html#cfn-ec2-vpcendpointservicepermissions-serviceid
type VPCEndpointServicePermissions =
  { "ServiceId" :: String
  , "AllowedPrincipals" :: Maybe (Array String)
  }

vpcePCEndpointServicePermissions :: { "ServiceId" :: String } -> VPCEndpointServicePermissions
vpcePCEndpointServicePermissions required =
  merge required
    { "AllowedPrincipals" : Nothing
    }