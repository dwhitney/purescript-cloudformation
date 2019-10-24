module CloudFormation.AWS.EC2.VPCEndpointService where 

import Data.Maybe (Maybe(..))
import Record (merge)


-- | `AWS::EC2::VPCEndpointService`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpcendpointservice.html-- |
-- | - `NetworkLoadBalancerArns`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpcendpointservice.html#cfn-ec2-vpcendpointservice-networkloadbalancerarns
-- | - `AcceptanceRequired`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpcendpointservice.html#cfn-ec2-vpcendpointservice-acceptancerequired
type VPCEndpointService =
  { "NetworkLoadBalancerArns" :: Array String
  , "AcceptanceRequired" :: Maybe Boolean
  }

vpcePCEndpointService :: { "NetworkLoadBalancerArns" :: Array String } -> VPCEndpointService
vpcePCEndpointService required =
  merge required
    { "AcceptanceRequired" : Nothing
    }