module CloudFormation.AWS.RDS.DBSecurityGroup where 

import Data.Maybe (Maybe(..))
import CloudFormation.Tag (Tag)
import Record (merge)


-- | `AWS::RDS::DBSecurityGroup`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-security-group.html-- |
-- | - `DBSecurityGroupIngress`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-security-group.html#cfn-rds-dbsecuritygroup-dbsecuritygroupingress
-- | - `EC2VpcId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-security-group.html#cfn-rds-dbsecuritygroup-ec2vpcid
-- | - `GroupDescription`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-security-group.html#cfn-rds-dbsecuritygroup-groupdescription
-- | - `Tags`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-security-group.html#cfn-rds-dbsecuritygroup-tags
type DBSecurityGroup =
  { "DBSecurityGroupIngress" :: Array Ingress
  , "GroupDescription" :: String
  , "EC2VpcId" :: Maybe String
  , "Tags" :: Maybe (Array Tag)
  }

dbsBSecurityGroup :: { "DBSecurityGroupIngress" :: Array Ingress, "GroupDescription" :: String } -> DBSecurityGroup
dbsBSecurityGroup required =
  merge required
    { "EC2VpcId" : Nothing
    , "Tags" : Nothing
    }

-- | `AWS::RDS::DBSecurityGroup.Ingress`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-security-group-rule.html-- |
-- | - `CIDRIP`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-security-group-rule.html#cfn-rds-securitygroup-cidrip
-- | - `EC2SecurityGroupId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-security-group-rule.html#cfn-rds-securitygroup-ec2securitygroupid
-- | - `EC2SecurityGroupName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-security-group-rule.html#cfn-rds-securitygroup-ec2securitygroupname
-- | - `EC2SecurityGroupOwnerId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-security-group-rule.html#cfn-rds-securitygroup-ec2securitygroupownerid
type Ingress =
  { "CIDRIP" :: Maybe String
  , "EC2SecurityGroupId" :: Maybe String
  , "EC2SecurityGroupName" :: Maybe String
  , "EC2SecurityGroupOwnerId" :: Maybe String
  }

ingress :: Ingress
ingress =
  { "CIDRIP" : Nothing
  , "EC2SecurityGroupId" : Nothing
  , "EC2SecurityGroupName" : Nothing
  , "EC2SecurityGroupOwnerId" : Nothing
  }