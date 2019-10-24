module CloudFormation.AWS.RDS.DBSecurityGroupIngress where 

import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation (class Resource)
import Data.Newtype (class Newtype)


-- | `AWS::RDS::DBSecurityGroupIngress`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-security-group-ingress.html
-- |
-- | - `CIDRIP`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-security-group-ingress.html#cfn-rds-securitygroup-ingress-cidrip
-- | - `DBSecurityGroupName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-security-group-ingress.html#cfn-rds-securitygroup-ingress-dbsecuritygroupname
-- | - `EC2SecurityGroupId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-security-group-ingress.html#cfn-rds-securitygroup-ingress-ec2securitygroupid
-- | - `EC2SecurityGroupName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-security-group-ingress.html#cfn-rds-securitygroup-ingress-ec2securitygroupname
-- | - `EC2SecurityGroupOwnerId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-security-group-ingress.html#cfn-rds-securitygroup-ingress-ec2securitygroupownerid
newtype DBSecurityGroupIngress = DBSecurityGroupIngress
  { "DBSecurityGroupName" :: String
  , "CIDRIP" :: Maybe String
  , "EC2SecurityGroupId" :: Maybe String
  , "EC2SecurityGroupName" :: Maybe String
  , "EC2SecurityGroupOwnerId" :: Maybe String
  }

derive instance newtypeDBSecurityGroupIngress :: Newtype DBSecurityGroupIngress _
instance resourceDBSecurityGroupIngress :: Resource DBSecurityGroupIngress where type_ _ = "AWS::RDS::DBSecurityGroupIngress"

dbsBSecurityGroupIngress :: { "DBSecurityGroupName" :: String } -> DBSecurityGroupIngress
dbsBSecurityGroupIngress required = DBSecurityGroupIngress
  (merge required
    { "CIDRIP" : Nothing
    , "EC2SecurityGroupId" : Nothing
    , "EC2SecurityGroupName" : Nothing
    , "EC2SecurityGroupOwnerId" : Nothing
    })