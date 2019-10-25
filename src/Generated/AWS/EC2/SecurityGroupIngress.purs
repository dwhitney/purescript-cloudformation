module CloudFormation.AWS.EC2.SecurityGroupIngress where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


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
  { "IpProtocol" :: Value String
  , "CidrIp" :: Maybe (Value String)
  , "CidrIpv6" :: Maybe (Value String)
  , "Description" :: Maybe (Value String)
  , "FromPort" :: Maybe (Value Int)
  , "GroupId" :: Maybe (Value String)
  , "GroupName" :: Maybe (Value String)
  , "SourcePrefixListId" :: Maybe (Value String)
  , "SourceSecurityGroupId" :: Maybe (Value String)
  , "SourceSecurityGroupName" :: Maybe (Value String)
  , "SourceSecurityGroupOwnerId" :: Maybe (Value String)
  , "ToPort" :: Maybe (Value Int)
  }

derive instance newtypeSecurityGroupIngress :: Newtype SecurityGroupIngress _
derive newtype instance writeSecurityGroupIngress :: WriteForeign SecurityGroupIngress
instance resourceSecurityGroupIngress :: Resource SecurityGroupIngress where type_ _ = "AWS::EC2::SecurityGroupIngress"

securityGroupIngress :: { "IpProtocol" :: Value String } -> SecurityGroupIngress
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