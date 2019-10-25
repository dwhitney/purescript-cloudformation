module CloudFormation.AWS.EC2.SecurityGroup where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import CloudFormation.Tag (Tag)
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


-- | `AWS::EC2::SecurityGroup`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-security-group.html
-- |
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
newtype SecurityGroup = SecurityGroup
  { "GroupDescription" :: Value String
  , "GroupName" :: Maybe (Value String)
  , "SecurityGroupEgress" :: Maybe (Value (Array Egress))
  , "SecurityGroupIngress" :: Maybe (Value (Array Ingress))
  , "Tags" :: Maybe (Value (Array Tag))
  , "VpcId" :: Maybe (Value String)
  }

derive instance newtypeSecurityGroup :: Newtype SecurityGroup _
derive newtype instance writeSecurityGroup :: WriteForeign SecurityGroup
instance resourceSecurityGroup :: Resource SecurityGroup where type_ _ = "AWS::EC2::SecurityGroup"

securityGroup :: { "GroupDescription" :: Value String } -> SecurityGroup
securityGroup required = SecurityGroup
  (merge required
    { "GroupName" : Nothing
    , "SecurityGroupEgress" : Nothing
    , "SecurityGroupIngress" : Nothing
    , "Tags" : Nothing
    , "VpcId" : Nothing
    })

-- | `AWS::EC2::SecurityGroup.Ingress`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-security-group-rule.html
-- |
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
  { "IpProtocol" :: Value String
  , "CidrIp" :: Maybe (Value String)
  , "CidrIpv6" :: Maybe (Value String)
  , "Description" :: Maybe (Value String)
  , "FromPort" :: Maybe (Value Int)
  , "SourcePrefixListId" :: Maybe (Value String)
  , "SourceSecurityGroupId" :: Maybe (Value String)
  , "SourceSecurityGroupName" :: Maybe (Value String)
  , "SourceSecurityGroupOwnerId" :: Maybe (Value String)
  , "ToPort" :: Maybe (Value Int)
  }

ingress :: { "IpProtocol" :: Value String } -> Ingress
ingress required =
  (merge required
    { "CidrIp" : Nothing
    , "CidrIpv6" : Nothing
    , "Description" : Nothing
    , "FromPort" : Nothing
    , "SourcePrefixListId" : Nothing
    , "SourceSecurityGroupId" : Nothing
    , "SourceSecurityGroupName" : Nothing
    , "SourceSecurityGroupOwnerId" : Nothing
    , "ToPort" : Nothing
    })

-- | `AWS::EC2::SecurityGroup.Egress`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-security-group-rule.html
-- |
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
  { "IpProtocol" :: Value String
  , "CidrIp" :: Maybe (Value String)
  , "CidrIpv6" :: Maybe (Value String)
  , "Description" :: Maybe (Value String)
  , "DestinationPrefixListId" :: Maybe (Value String)
  , "DestinationSecurityGroupId" :: Maybe (Value String)
  , "FromPort" :: Maybe (Value Int)
  , "ToPort" :: Maybe (Value Int)
  }

egress :: { "IpProtocol" :: Value String } -> Egress
egress required =
  (merge required
    { "CidrIp" : Nothing
    , "CidrIpv6" : Nothing
    , "Description" : Nothing
    , "DestinationPrefixListId" : Nothing
    , "DestinationSecurityGroupId" : Nothing
    , "FromPort" : Nothing
    , "ToPort" : Nothing
    })