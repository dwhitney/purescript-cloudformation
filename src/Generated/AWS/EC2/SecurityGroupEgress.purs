module CloudFormation.AWS.EC2.SecurityGroupEgress where 

import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation (class Resource)
import Data.Newtype (class Newtype)


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
  { "GroupId" :: String
  , "IpProtocol" :: String
  , "CidrIp" :: Maybe String
  , "CidrIpv6" :: Maybe String
  , "Description" :: Maybe String
  , "DestinationPrefixListId" :: Maybe String
  , "DestinationSecurityGroupId" :: Maybe String
  , "FromPort" :: Maybe Int
  , "ToPort" :: Maybe Int
  }

derive instance newtypeSecurityGroupEgress :: Newtype SecurityGroupEgress _
instance resourceSecurityGroupEgress :: Resource SecurityGroupEgress where type_ _ = "AWS::EC2::SecurityGroupEgress"

securityGroupEgress :: { "GroupId" :: String, "IpProtocol" :: String } -> SecurityGroupEgress
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