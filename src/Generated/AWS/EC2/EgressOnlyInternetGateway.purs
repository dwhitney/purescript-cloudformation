module CloudFormation.AWS.EC2.EgressOnlyInternetGateway where 

import CloudFormation (Value)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


-- | `AWS::EC2::EgressOnlyInternetGateway`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-egressonlyinternetgateway.html
-- |
-- | - `VpcId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-egressonlyinternetgateway.html#cfn-ec2-egressonlyinternetgateway-vpcid
newtype EgressOnlyInternetGateway = EgressOnlyInternetGateway
  { "VpcId" :: Value String
  }

derive instance newtypeEgressOnlyInternetGateway :: Newtype EgressOnlyInternetGateway _
derive newtype instance writeEgressOnlyInternetGateway :: WriteForeign EgressOnlyInternetGateway
instance resourceEgressOnlyInternetGateway :: Resource EgressOnlyInternetGateway where type_ _ = "AWS::EC2::EgressOnlyInternetGateway"

egressOnlyInternetGateway :: { "VpcId" :: Value String } -> EgressOnlyInternetGateway
egressOnlyInternetGateway required = EgressOnlyInternetGateway
  required