module CloudFormation.AWS.EC2.VPCPeeringConnection where 

import Data.Maybe (Maybe(..))
import CloudFormation.Tag (Tag)
import Record (merge)
import CloudFormation (class Resource)
import Data.Newtype (class Newtype)


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
  { "PeerVpcId" :: String
  , "VpcId" :: String
  , "PeerOwnerId" :: Maybe String
  , "PeerRegion" :: Maybe String
  , "PeerRoleArn" :: Maybe String
  , "Tags" :: Maybe (Array Tag)
  }

derive instance newtypeVPCPeeringConnection :: Newtype VPCPeeringConnection _
instance resourceVPCPeeringConnection :: Resource VPCPeeringConnection where type_ _ = "AWS::EC2::VPCPeeringConnection"

vpcpPCPeeringConnection :: { "PeerVpcId" :: String, "VpcId" :: String } -> VPCPeeringConnection
vpcpPCPeeringConnection required = VPCPeeringConnection
  (merge required
    { "PeerOwnerId" : Nothing
    , "PeerRegion" : Nothing
    , "PeerRoleArn" : Nothing
    , "Tags" : Nothing
    })