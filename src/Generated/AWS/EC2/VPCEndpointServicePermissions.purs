module CloudFormation.AWS.EC2.VPCEndpointServicePermissions where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


-- | `AWS::EC2::VPCEndpointServicePermissions`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpcendpointservicepermissions.html
-- |
-- | - `AllowedPrincipals`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpcendpointservicepermissions.html#cfn-ec2-vpcendpointservicepermissions-allowedprincipals
-- | - `ServiceId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpcendpointservicepermissions.html#cfn-ec2-vpcendpointservicepermissions-serviceid
newtype VPCEndpointServicePermissions = VPCEndpointServicePermissions
  { "ServiceId" :: Value String
  , "AllowedPrincipals" :: Maybe (Value (Array String))
  }

derive instance newtypeVPCEndpointServicePermissions :: Newtype VPCEndpointServicePermissions _
derive newtype instance writeVPCEndpointServicePermissions :: WriteForeign VPCEndpointServicePermissions
instance resourceVPCEndpointServicePermissions :: Resource VPCEndpointServicePermissions where type_ _ = "AWS::EC2::VPCEndpointServicePermissions"

vpcePCEndpointServicePermissions :: { "ServiceId" :: Value String } -> VPCEndpointServicePermissions
vpcePCEndpointServicePermissions required = VPCEndpointServicePermissions
  (merge required
    { "AllowedPrincipals" : Nothing
    })