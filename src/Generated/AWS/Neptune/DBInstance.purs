module CloudFormation.AWS.Neptune.DBInstance where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import CloudFormation.Tag (Tag)
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


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
  { "DBInstanceClass" :: Value String
  , "DBParameterGroupName" :: Maybe (Value String)
  , "AllowMajorVersionUpgrade" :: Maybe (Value Boolean)
  , "DBClusterIdentifier" :: Maybe (Value String)
  , "AvailabilityZone" :: Maybe (Value String)
  , "PreferredMaintenanceWindow" :: Maybe (Value String)
  , "AutoMinorVersionUpgrade" :: Maybe (Value Boolean)
  , "DBSubnetGroupName" :: Maybe (Value String)
  , "DBInstanceIdentifier" :: Maybe (Value String)
  , "DBSnapshotIdentifier" :: Maybe (Value String)
  , "Tags" :: Maybe (Value (Array Tag))
  }

derive instance newtypeDBInstance :: Newtype DBInstance _
derive newtype instance writeDBInstance :: WriteForeign DBInstance
instance resourceDBInstance :: Resource DBInstance where type_ _ = "AWS::Neptune::DBInstance"

dbiBInstance :: { "DBInstanceClass" :: Value String } -> DBInstance
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