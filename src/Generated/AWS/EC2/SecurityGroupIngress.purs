module CloudFormation.AWS.EC2.SecurityGroupIngress where 

import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation (class Resource)
import Data.Newtype (class Newtype)


-- | `AWS::EC2::SecurityGroupIngress`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-security-group-ingress.html
-- |
-- | - `CidrIp`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-security-group-ingress.html#cfn-ec2-security-group-ingress-cidrip
-- | - `CidrIpv6`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-security-group-ingress.html#cfn-ec2-security-group-ingress-cidripv6
-- | - `Description`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-security-group-ingress.html#cfn-ec2-security-group-ingress-description
-- | - `FromPort`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-security-group-ingress.html#cfn-ec2-security-group-ingress-fromport
-- | - `GroupId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-security-group-ingress.html#cfn-ec2-security-group-ingress-groupid
-- | - `GroupName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-security-group-ingress.html#cfn-ec2-security-group-ingress-groupname
-- | - `IpProtocol`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-security-group-ingress.html#cfn-ec2-security-group-ingress-ipprotocol
-- | - `SourcePrefixListId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-security-group-ingress.html#cfn-ec2-securitygroupingress-sourceprefixlistid
-- | - `SourceSecurityGroupId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-security-group-ingress.html#cfn-ec2-security-group-ingress-sourcesecuritygroupid
-- | - `SourceSecurityGroupName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-security-group-ingress.html#cfn-ec2-security-group-ingress-sourcesecuritygroupname
-- | - `SourceSecurityGroupOwnerId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-security-group-ingress.html#cfn-ec2-security-group-ingress-sourcesecuritygroupownerid
-- | - `ToPort`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-security-group-ingress.html#cfn-ec2-security-group-ingress-toport
newtype SecurityGroupIngress = SecurityGroupIngress
  { "IpProtocol" :: String
  , "CidrIp" :: Maybe String
  , "CidrIpv6" :: Maybe String
  , "Description" :: Maybe String
  , "FromPort" :: Maybe Int
  , "GroupId" :: Maybe String
  , "GroupName" :: Maybe String
  , "SourcePrefixListId" :: Maybe String
  , "SourceSecurityGroupId" :: Maybe String
  , "SourceSecurityGroupName" :: Maybe String
  , "SourceSecurityGroupOwnerId" :: Maybe String
  , "ToPort" :: Maybe Int
  }

derive instance newtypeSecurityGroupIngress :: Newtype SecurityGroupIngress _
instance resourceSecurityGroupIngress :: Resource SecurityGroupIngress where type_ _ = "AWS::EC2::SecurityGroupIngress"

securityGroupIngress :: { "IpProtocol" :: String } -> SecurityGroupIngress
securityGroupIngress required = SecurityGroupIngress
  (merge required
    { "CidrIp" : Nothing
    , "CidrIpv6" : Nothing
    , "Description" : Nothing
    , "FromPort" : Nothing
    , "GroupId" : Nothing
    , "GroupName" : Nothing
    , "SourcePrefixListId" : Nothing
    , "SourceSecurityGroupId" : Nothing
    , "SourceSecurityGroupName" : Nothing
    , "SourceSecurityGroupOwnerId" : Nothing
    , "ToPort" : Nothing
    })