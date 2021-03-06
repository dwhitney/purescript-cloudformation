module CloudFormation.AWS.EC2.EIPAssociation where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


-- | `AWS::EC2::EIPAssociation`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-eip-association.html
-- |
-- | - `AllocationId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-eip-association.html#cfn-ec2-eipassociation-allocationid
-- | - `EIP`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-eip-association.html#cfn-ec2-eipassociation-eip
-- | - `InstanceId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-eip-association.html#cfn-ec2-eipassociation-instanceid
-- | - `NetworkInterfaceId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-eip-association.html#cfn-ec2-eipassociation-networkinterfaceid
-- | - `PrivateIpAddress`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-eip-association.html#cfn-ec2-eipassociation-PrivateIpAddress
newtype EIPAssociation = EIPAssociation
  { "AllocationId" :: Maybe (Value String)
  , "EIP" :: Maybe (Value String)
  , "InstanceId" :: Maybe (Value String)
  , "NetworkInterfaceId" :: Maybe (Value String)
  , "PrivateIpAddress" :: Maybe (Value String)
  }

derive instance newtypeEIPAssociation :: Newtype EIPAssociation _
derive newtype instance writeEIPAssociation :: WriteForeign EIPAssociation
instance resourceEIPAssociation :: Resource EIPAssociation where type_ _ = "AWS::EC2::EIPAssociation"

eipaIPAssociation :: EIPAssociation
eipaIPAssociation = EIPAssociation
  { "AllocationId" : Nothing
  , "EIP" : Nothing
  , "InstanceId" : Nothing
  , "NetworkInterfaceId" : Nothing
  , "PrivateIpAddress" : Nothing
  }