module CloudFormation.AWS.EC2.VPCEndpointServicePermissions where 

import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation (class Resource)
import Data.Newtype (class Newtype)


-- | `AWS::EC2::VPCEndpointServicePermissions`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpcendpointservicepermissions.html
-- |
-- | - `AllowedPrincipals`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpcendpointservicepermissions.html#cfn-ec2-vpcendpointservicepermissions-allowedprincipals
-- | - `ServiceId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpcendpointservicepermissions.html#cfn-ec2-vpcendpointservicepermissions-serviceid
newtype VPCEndpointServicePermissions = VPCEndpointServicePermissions
  { "ServiceId" :: String
  , "AllowedPrincipals" :: Maybe (Array String)
  }

derive instance newtypeVPCEndpointServicePermissions :: Newtype VPCEndpointServicePermissions _
instance resourceVPCEndpointServicePermissions :: Resource VPCEndpointServicePermissions where type_ _ = "AWS::EC2::VPCEndpointServicePermissions"

vpcePCEndpointServicePermissions :: { "ServiceId" :: String } -> VPCEndpointServicePermissions
vpcePCEndpointServicePermissions required = VPCEndpointServicePermissions
  (merge required
    { "AllowedPrincipals" : Nothing
    })