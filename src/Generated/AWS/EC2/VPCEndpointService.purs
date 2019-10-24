module CloudFormation.AWS.EC2.VPCEndpointService where 

import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation (class Resource)
import Data.Newtype (class Newtype)


-- | `AWS::EC2::VPCEndpointService`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpcendpointservice.html
-- |
-- | - `NetworkLoadBalancerArns`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpcendpointservice.html#cfn-ec2-vpcendpointservice-networkloadbalancerarns
-- | - `AcceptanceRequired`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpcendpointservice.html#cfn-ec2-vpcendpointservice-acceptancerequired
newtype VPCEndpointService = VPCEndpointService
  { "NetworkLoadBalancerArns" :: Array String
  , "AcceptanceRequired" :: Maybe Boolean
  }

derive instance newtypeVPCEndpointService :: Newtype VPCEndpointService _
instance resourceVPCEndpointService :: Resource VPCEndpointService where type_ _ = "AWS::EC2::VPCEndpointService"

vpcePCEndpointService :: { "NetworkLoadBalancerArns" :: Array String } -> VPCEndpointService
vpcePCEndpointService required = VPCEndpointService
  (merge required
    { "AcceptanceRequired" : Nothing
    })