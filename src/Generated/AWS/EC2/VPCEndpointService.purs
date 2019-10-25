module CloudFormation.AWS.EC2.VPCEndpointService where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


-- | `AWS::EC2::VPCEndpointService`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpcendpointservice.html
-- |
-- | - `NetworkLoadBalancerArns`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpcendpointservice.html#cfn-ec2-vpcendpointservice-networkloadbalancerarns
-- | - `AcceptanceRequired`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpcendpointservice.html#cfn-ec2-vpcendpointservice-acceptancerequired
newtype VPCEndpointService = VPCEndpointService
  { "NetworkLoadBalancerArns" :: Value (Array String)
  , "AcceptanceRequired" :: Maybe (Value Boolean)
  }

derive instance newtypeVPCEndpointService :: Newtype VPCEndpointService _
derive newtype instance writeVPCEndpointService :: WriteForeign VPCEndpointService
instance resourceVPCEndpointService :: Resource VPCEndpointService where type_ _ = "AWS::EC2::VPCEndpointService"

vpcePCEndpointService :: { "NetworkLoadBalancerArns" :: Value (Array String) } -> VPCEndpointService
vpcePCEndpointService required = VPCEndpointService
  (merge required
    { "AcceptanceRequired" : Nothing
    })