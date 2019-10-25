module CloudFormation.AWS.RDS.DBSecurityGroup where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import CloudFormation.Tag (Tag)
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


-- | `AWS::RDS::DBSecurityGroup`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-security-group.html
-- |
-- | - `DBSecurityGroupIngress`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-security-group.html#cfn-rds-dbsecuritygroup-dbsecuritygroupingress
-- | - `EC2VpcId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-security-group.html#cfn-rds-dbsecuritygroup-ec2vpcid
-- | - `GroupDescription`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-security-group.html#cfn-rds-dbsecuritygroup-groupdescription
-- | - `Tags`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-security-group.html#cfn-rds-dbsecuritygroup-tags
newtype DBSecurityGroup = DBSecurityGroup
  { "DBSecurityGroupIngress" :: Value (Array Ingress)
  , "GroupDescription" :: Value String
  , "EC2VpcId" :: Maybe (Value String)
  , "Tags" :: Maybe (Value (Array Tag))
  }

derive instance newtypeDBSecurityGroup :: Newtype DBSecurityGroup _
derive newtype instance writeDBSecurityGroup :: WriteForeign DBSecurityGroup
instance resourceDBSecurityGroup :: Resource DBSecurityGroup where type_ _ = "AWS::RDS::DBSecurityGroup"

dbsBSecurityGroup :: { "DBSecurityGroupIngress" :: Value (Array Ingress), "GroupDescription" :: Value String } -> DBSecurityGroup
dbsBSecurityGroup required = DBSecurityGroup
  (merge required
    { "EC2VpcId" : Nothing
    , "Tags" : Nothing
    })

-- | `AWS::RDS::DBSecurityGroup.Ingress`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-security-group-rule.html
-- |
-- | - `CIDRIP`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-security-group-rule.html#cfn-rds-securitygroup-cidrip
-- | - `EC2SecurityGroupId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-security-group-rule.html#cfn-rds-securitygroup-ec2securitygroupid
-- | - `EC2SecurityGroupName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-security-group-rule.html#cfn-rds-securitygroup-ec2securitygroupname
-- | - `EC2SecurityGroupOwnerId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-security-group-rule.html#cfn-rds-securitygroup-ec2securitygroupownerid
type Ingress =
  { "CIDRIP" :: Maybe (Value String)
  , "EC2SecurityGroupId" :: Maybe (Value String)
  , "EC2SecurityGroupName" :: Maybe (Value String)
  , "EC2SecurityGroupOwnerId" :: Maybe (Value String)
  }

ingress :: Ingress
ingress =
  { "CIDRIP" : Nothing
  , "EC2SecurityGroupId" : Nothing
  , "EC2SecurityGroupName" : Nothing
  , "EC2SecurityGroupOwnerId" : Nothing
  }