module CloudFormation.AWS.EC2.EgressOnlyInternetGateway where 




-- | `AWS::EC2::EgressOnlyInternetGateway`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-egressonlyinternetgateway.html
-- |
-- | - `VpcId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-egressonlyinternetgateway.html#cfn-ec2-egressonlyinternetgateway-vpcid
type EgressOnlyInternetGateway =
  { "VpcId" :: String
  }

egressOnlyInternetGateway :: { "VpcId" :: String } -> EgressOnlyInternetGateway
egressOnlyInternetGateway required =
  required