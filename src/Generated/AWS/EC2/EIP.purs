module CloudFormation.AWS.EC2.EIP where 

import Data.Maybe (Maybe(..))
import CloudFormation (class Resource)
import Data.Newtype (class Newtype)


-- | `AWS::EC2::EIP`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-eip.html
-- |
-- | - `Domain`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-eip.html#cfn-ec2-eip-domain
-- | - `InstanceId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-eip.html#cfn-ec2-eip-instanceid
-- | - `PublicIpv4Pool`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-eip.html#cfn-ec2-eip-publicipv4pool
newtype EIP = EIP
  { "Domain" :: Maybe String
  , "InstanceId" :: Maybe String
  , "PublicIpv4Pool" :: Maybe String
  }

derive instance newtypeEIP :: Newtype EIP _
instance resourceEIP :: Resource EIP where type_ _ = "AWS::EC2::EIP"

eipIP :: EIP
eipIP = EIP
  { "Domain" : Nothing
  , "InstanceId" : Nothing
  , "PublicIpv4Pool" : Nothing
  }