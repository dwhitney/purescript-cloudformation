module CloudFormation.AWS.DocDB.DBInstance where 

import Data.Maybe (Maybe(..))
import CloudFormation.Tag (Tag)
import Record (merge)
import CloudFormation (class Resource)
import Data.Newtype (class Newtype)


-- | `AWS::DocDB::DBInstance`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-docdb-dbinstance.html
-- |
-- | - `DBInstanceClass`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-docdb-dbinstance.html#cfn-docdb-dbinstance-dbinstanceclass
-- | - `DBClusterIdentifier`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-docdb-dbinstance.html#cfn-docdb-dbinstance-dbclusteridentifier
-- | - `AvailabilityZone`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-docdb-dbinstance.html#cfn-docdb-dbinstance-availabilityzone
-- | - `PreferredMaintenanceWindow`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-docdb-dbinstance.html#cfn-docdb-dbinstance-preferredmaintenancewindow
-- | - `AutoMinorVersionUpgrade`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-docdb-dbinstance.html#cfn-docdb-dbinstance-autominorversionupgrade
-- | - `DBInstanceIdentifier`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-docdb-dbinstance.html#cfn-docdb-dbinstance-dbinstanceidentifier
-- | - `Tags`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-docdb-dbinstance.html#cfn-docdb-dbinstance-tags
newtype DBInstance = DBInstance
  { "DBInstanceClass" :: String
  , "DBClusterIdentifier" :: String
  , "AvailabilityZone" :: Maybe String
  , "PreferredMaintenanceWindow" :: Maybe String
  , "AutoMinorVersionUpgrade" :: Maybe Boolean
  , "DBInstanceIdentifier" :: Maybe String
  , "Tags" :: Maybe (Array Tag)
  }

derive instance newtypeDBInstance :: Newtype DBInstance _
instance resourceDBInstance :: Resource DBInstance where type_ _ = "AWS::DocDB::DBInstance"

dbiBInstance :: { "DBInstanceClass" :: String, "DBClusterIdentifier" :: String } -> DBInstance
dbiBInstance required = DBInstance
  (merge required
    { "AvailabilityZone" : Nothing
    , "PreferredMaintenanceWindow" : Nothing
    , "AutoMinorVersionUpgrade" : Nothing
    , "DBInstanceIdentifier" : Nothing
    , "Tags" : Nothing
    })