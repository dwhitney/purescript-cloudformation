module CloudFormation.AWS.RDS.DBSecurityGroupIngress where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


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
  { "DBSecurityGroupName" :: Value String
  , "CIDRIP" :: Maybe (Value String)
  , "EC2SecurityGroupId" :: Maybe (Value String)
  , "EC2SecurityGroupName" :: Maybe (Value String)
  , "EC2SecurityGroupOwnerId" :: Maybe (Value String)
  }

derive instance newtypeDBSecurityGroupIngress :: Newtype DBSecurityGroupIngress _
derive newtype instance writeDBSecurityGroupIngress :: WriteForeign DBSecurityGroupIngress
instance resourceDBSecurityGroupIngress :: Resource DBSecurityGroupIngress where type_ _ = "AWS::RDS::DBSecurityGroupIngress"

dbsBSecurityGroupIngress :: { "DBSecurityGroupName" :: Value String } -> DBSecurityGroupIngress
dbsBSecurityGroupIngress required = DBSecurityGroupIngress
  (merge required
    { "CIDRIP" : Nothing
    , "EC2SecurityGroupId" : Nothing
    , "EC2SecurityGroupName" : Nothing
    , "EC2SecurityGroupOwnerId" : Nothing
    })