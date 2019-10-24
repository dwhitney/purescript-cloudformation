module CloudFormation.AWS.Neptune.DBInstance where 

import Data.Maybe (Maybe(..))
import CloudFormation.Tag (Tag)
import Record (merge)
import CloudFormation (class Resource)
import Data.Newtype (class Newtype)


-- | `AWS::Neptune::DBInstance`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-neptune-dbinstance.html
-- |
-- | - `DBParameterGroupName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-neptune-dbinstance.html#cfn-neptune-dbinstance-dbparametergroupname
-- | - `DBInstanceClass`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-neptune-dbinstance.html#cfn-neptune-dbinstance-dbinstanceclass
-- | - `AllowMajorVersionUpgrade`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-neptune-dbinstance.html#cfn-neptune-dbinstance-allowmajorversionupgrade
-- | - `DBClusterIdentifier`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-neptune-dbinstance.html#cfn-neptune-dbinstance-dbclusteridentifier
-- | - `AvailabilityZone`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-neptune-dbinstance.html#cfn-neptune-dbinstance-availabilityzone
-- | - `PreferredMaintenanceWindow`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-neptune-dbinstance.html#cfn-neptune-dbinstance-preferredmaintenancewindow
-- | - `AutoMinorVersionUpgrade`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-neptune-dbinstance.html#cfn-neptune-dbinstance-autominorversionupgrade
-- | - `DBSubnetGroupName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-neptune-dbinstance.html#cfn-neptune-dbinstance-dbsubnetgroupname
-- | - `DBInstanceIdentifier`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-neptune-dbinstance.html#cfn-neptune-dbinstance-dbinstanceidentifier
-- | - `DBSnapshotIdentifier`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-neptune-dbinstance.html#cfn-neptune-dbinstance-dbsnapshotidentifier
-- | - `Tags`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-neptune-dbinstance.html#cfn-neptune-dbinstance-tags
newtype DBInstance = DBInstance
  { "DBInstanceClass" :: String
  , "DBParameterGroupName" :: Maybe String
  , "AllowMajorVersionUpgrade" :: Maybe Boolean
  , "DBClusterIdentifier" :: Maybe String
  , "AvailabilityZone" :: Maybe String
  , "PreferredMaintenanceWindow" :: Maybe String
  , "AutoMinorVersionUpgrade" :: Maybe Boolean
  , "DBSubnetGroupName" :: Maybe String
  , "DBInstanceIdentifier" :: Maybe String
  , "DBSnapshotIdentifier" :: Maybe String
  , "Tags" :: Maybe (Array Tag)
  }

derive instance newtypeDBInstance :: Newtype DBInstance _
instance resourceDBInstance :: Resource DBInstance where type_ _ = "AWS::Neptune::DBInstance"

dbiBInstance :: { "DBInstanceClass" :: String } -> DBInstance
dbiBInstance required = DBInstance
  (merge required
    { "DBParameterGroupName" : Nothing
    , "AllowMajorVersionUpgrade" : Nothing
    , "DBClusterIdentifier" : Nothing
    , "AvailabilityZone" : Nothing
    , "PreferredMaintenanceWindow" : Nothing
    , "AutoMinorVersionUpgrade" : Nothing
    , "DBSubnetGroupName" : Nothing
    , "DBInstanceIdentifier" : Nothing
    , "DBSnapshotIdentifier" : Nothing
    , "Tags" : Nothing
    })