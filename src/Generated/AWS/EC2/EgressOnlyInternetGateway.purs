module CloudFormation.AWS.EC2.EgressOnlyInternetGateway where 

import CloudFormation (class Resource)
import Data.Newtype (class Newtype)


-- | `AWS::EC2::EgressOnlyInternetGateway`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-egressonlyinternetgateway.html
-- |
-- | - `VpcId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-egressonlyinternetgateway.html#cfn-ec2-egressonlyinternetgateway-vpcid
newtype EgressOnlyInternetGateway = EgressOnlyInternetGateway
  { "VpcId" :: String
  }

derive instance newtypeEgressOnlyInternetGateway :: Newtype EgressOnlyInternetGateway _
instance resourceEgressOnlyInternetGateway :: Resource EgressOnlyInternetGateway where type_ _ = "AWS::EC2::EgressOnlyInternetGateway"

egressOnlyInternetGateway :: { "VpcId" :: String } -> EgressOnlyInternetGateway
egressOnlyInternetGateway required = EgressOnlyInternetGateway
  required