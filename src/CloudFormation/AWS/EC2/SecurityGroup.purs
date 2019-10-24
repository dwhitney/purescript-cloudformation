module CloudFormation.AWS.EC2.SecurityGroup where 

import Data.Maybe (Maybe(..))
import CloudFormation.Tag (Tag)
import Record (merge)


-- | `AWS::EC2::SecurityGroup`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-security-group.html-- |
-- | - `GroupDescription`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-security-group.html#cfn-ec2-securitygroup-groupdescription
-- | - `GroupName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-security-group.html#cfn-ec2-securitygroup-groupname
-- | - `SecurityGroupEgress`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-security-group.html#cfn-ec2-securitygroup-securitygroupegress
-- | - `SecurityGroupIngress`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-security-group.html#cfn-ec2-securitygroup-securitygroupingress
-- | - `Tags`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-security-group.html#cfn-ec2-securitygroup-tags
-- | - `VpcId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-security-group.html#cfn-ec2-securitygroup-vpcid
type SecurityGroup =
  { "GroupDescription" :: String
  , "GroupName" :: Maybe String
  , "SecurityGroupEgress" :: Maybe (Array Egress)
  , "SecurityGroupIngress" :: Maybe (Array Ingress)
  , "Tags" :: Maybe (Array Tag)
  , "VpcId" :: Maybe String
  }

securityGroup :: { "GroupDescription" :: String } -> SecurityGroup
securityGroup required =
  merge required
    { "GroupName" : Nothing
    , "SecurityGroupEgress" : Nothing
    , "SecurityGroupIngress" : Nothing
    , "Tags" : Nothing
    , "VpcId" : Nothing
    }

-- | `AWS::EC2::SecurityGroup.Ingress`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-security-group-rule.html-- |
-- | - `CidrIp`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-security-group-rule.html#cfn-ec2-security-group-rule-cidrip
-- | - `CidrIpv6`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-security-group-rule.html#cfn-ec2-security-group-rule-cidripv6
-- | - `Description`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-security-group-rule.html#cfn-ec2-security-group-rule-description
-- | - `FromPort`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-security-group-rule.html#cfn-ec2-security-group-rule-fromport
-- | - `IpProtocol`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-security-group-rule.html#cfn-ec2-security-group-rule-ipprotocol
-- | - `SourcePrefixListId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-security-group-rule.html#cfn-ec2-securitygroup-ingress-sourceprefixlistid
-- | - `SourceSecurityGroupId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-security-group-rule.html#cfn-ec2-security-group-rule-sourcesecuritygroupid
-- | - `SourceSecurityGroupName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-security-group-rule.html#cfn-ec2-security-group-rule-sourcesecuritygroupname
-- | - `SourceSecurityGroupOwnerId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-security-group-rule.html#cfn-ec2-security-group-rule-sourcesecuritygroupownerid
-- | - `ToPort`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-security-group-rule.html#cfn-ec2-security-group-rule-toport
type Ingress =
  { "IpProtocol" :: String
  , "CidrIp" :: Maybe String
  , "CidrIpv6" :: Maybe String
  , "Description" :: Maybe String
  , "FromPort" :: Maybe Int
  , "SourcePrefixListId" :: Maybe String
  , "SourceSecurityGroupId" :: Maybe String
  , "SourceSecurityGroupName" :: Maybe String
  , "SourceSecurityGroupOwnerId" :: Maybe String
  , "ToPort" :: Maybe Int
  }

ingress :: { "IpProtocol" :: String } -> Ingress
ingress required =
  merge required
    { "CidrIp" : Nothing
    , "CidrIpv6" : Nothing
    , "Description" : Nothing
    , "FromPort" : Nothing
    , "SourcePrefixListId" : Nothing
    , "SourceSecurityGroupId" : Nothing
    , "SourceSecurityGroupName" : Nothing
    , "SourceSecurityGroupOwnerId" : Nothing
    , "ToPort" : Nothing
    }

-- | `AWS::EC2::SecurityGroup.Egress`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-security-group-rule.html-- |
-- | - `CidrIp`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-security-group-rule.html#cfn-ec2-security-group-rule-cidrip
-- | - `CidrIpv6`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-security-group-rule.html#cfn-ec2-security-group-rule-cidripv6
-- | - `Description`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-security-group-rule.html#cfn-ec2-security-group-rule-description
-- | - `DestinationPrefixListId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-security-group-rule.html#cfn-ec2-security-group-rule-destinationprefixlistid
-- | - `DestinationSecurityGroupId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-security-group-rule.html#cfn-ec2-security-group-rule-destsecgroupid
-- | - `FromPort`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-security-group-rule.html#cfn-ec2-security-group-rule-fromport
-- | - `IpProtocol`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-security-group-rule.html#cfn-ec2-security-group-rule-ipprotocol
-- | - `ToPort`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-security-group-rule.html#cfn-ec2-security-group-rule-toport
type Egress =
  { "IpProtocol" :: String
  , "CidrIp" :: Maybe String
  , "CidrIpv6" :: Maybe String
  , "Description" :: Maybe String
  , "DestinationPrefixListId" :: Maybe String
  , "DestinationSecurityGroupId" :: Maybe String
  , "FromPort" :: Maybe Int
  , "ToPort" :: Maybe Int
  }

egress :: { "IpProtocol" :: String } -> Egress
egress required =
  merge required
    { "CidrIp" : Nothing
    , "CidrIpv6" : Nothing
    , "Description" : Nothing
    , "DestinationPrefixListId" : Nothing
    , "DestinationSecurityGroupId" : Nothing
    , "FromPort" : Nothing
    , "ToPort" : Nothing
    }