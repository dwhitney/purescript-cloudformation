module CloudFormation.AWS.EC2.VPCPeeringConnection where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import CloudFormation.Tag (Tag)
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


-- | `AWS::EC2::VPCPeeringConnection`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpcpeeringconnection.html
-- |
-- | - `PeerOwnerId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpcpeeringconnection.html#cfn-ec2-vpcpeeringconnection-peerownerid
-- | - `PeerRegion`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpcpeeringconnection.html#cfn-ec2-vpcpeeringconnection-peerregion
-- | - `PeerRoleArn`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpcpeeringconnection.html#cfn-ec2-vpcpeeringconnection-peerrolearn
-- | - `PeerVpcId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpcpeeringconnection.html#cfn-ec2-vpcpeeringconnection-peervpcid
-- | - `Tags`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpcpeeringconnection.html#cfn-ec2-vpcpeeringconnection-tags
-- | - `VpcId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpcpeeringconnection.html#cfn-ec2-vpcpeeringconnection-vpcid
newtype VPCPeeringConnection = VPCPeeringConnection
  { "PeerVpcId" :: Value String
  , "VpcId" :: Value String
  , "PeerOwnerId" :: Maybe (Value String)
  , "PeerRegion" :: Maybe (Value String)
  , "PeerRoleArn" :: Maybe (Value String)
  , "Tags" :: Maybe (Value (Array Tag))
  }

derive instance newtypeVPCPeeringConnection :: Newtype VPCPeeringConnection _
derive newtype instance writeVPCPeeringConnection :: WriteForeign VPCPeeringConnection
instance resourceVPCPeeringConnection :: Resource VPCPeeringConnection where type_ _ = "AWS::EC2::VPCPeeringConnection"

vpcpPCPeeringConnection :: { "PeerVpcId" :: Value String, "VpcId" :: Value String } -> VPCPeeringConnection
vpcpPCPeeringConnection required = VPCPeeringConnection
  (merge required
    { "PeerOwnerId" : Nothing
    , "PeerRegion" : Nothing
    , "PeerRoleArn" : Nothing
    , "Tags" : Nothing
    })