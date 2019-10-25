module CloudFormation.AWS.EC2.SecurityGroupEgress where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


-- | `AWS::EC2::SecurityGroupEgress`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-security-group-egress.html
-- |
-- | - `CidrIp`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-security-group-egress.html#cfn-ec2-securitygroupegress-cidrip
-- | - `CidrIpv6`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-security-group-egress.html#cfn-ec2-securitygroupegress-cidripv6
-- | - `Description`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-security-group-egress.html#cfn-ec2-securitygroupegress-description
-- | - `DestinationPrefixListId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-security-group-egress.html#cfn-ec2-securitygroupegress-destinationprefixlistid
-- | - `DestinationSecurityGroupId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-security-group-egress.html#cfn-ec2-securitygroupegress-destinationsecuritygroupid
-- | - `FromPort`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-security-group-egress.html#cfn-ec2-securitygroupegress-fromport
-- | - `GroupId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-security-group-egress.html#cfn-ec2-securitygroupegress-groupid
-- | - `IpProtocol`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-security-group-egress.html#cfn-ec2-securitygroupegress-ipprotocol
-- | - `ToPort`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-security-group-egress.html#cfn-ec2-securitygroupegress-toport
newtype SecurityGroupEgress = SecurityGroupEgress
  { "GroupId" :: Value String
  , "IpProtocol" :: Value String
  , "CidrIp" :: Maybe (Value String)
  , "CidrIpv6" :: Maybe (Value String)
  , "Description" :: Maybe (Value String)
  , "DestinationPrefixListId" :: Maybe (Value String)
  , "DestinationSecurityGroupId" :: Maybe (Value String)
  , "FromPort" :: Maybe (Value Int)
  , "ToPort" :: Maybe (Value Int)
  }

derive instance newtypeSecurityGroupEgress :: Newtype SecurityGroupEgress _
derive newtype instance writeSecurityGroupEgress :: WriteForeign SecurityGroupEgress
instance resourceSecurityGroupEgress :: Resource SecurityGroupEgress where type_ _ = "AWS::EC2::SecurityGroupEgress"

securityGroupEgress :: { "GroupId" :: Value String, "IpProtocol" :: Value String } -> SecurityGroupEgress
securityGroupEgress required = SecurityGroupEgress
  (merge required
    { "CidrIp" : Nothing
    , "CidrIpv6" : Nothing
    , "Description" : Nothing
    , "DestinationPrefixListId" : Nothing
    , "DestinationSecurityGroupId" : Nothing
    , "FromPort" : Nothing
    , "ToPort" : Nothing
    })