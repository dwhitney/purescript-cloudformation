module CloudFormation.AWS.EC2.EIPAssociation where 

import Data.Maybe (Maybe(..))


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
type EIPAssociation =
  { "AllocationId" :: Maybe String
  , "EIP" :: Maybe String
  , "InstanceId" :: Maybe String
  , "NetworkInterfaceId" :: Maybe String
  , "PrivateIpAddress" :: Maybe String
  }

eipaIPAssociation :: EIPAssociation
eipaIPAssociation =
  { "AllocationId" : Nothing
  , "EIP" : Nothing
  , "InstanceId" : Nothing
  , "NetworkInterfaceId" : Nothing
  , "PrivateIpAddress" : Nothing
  }