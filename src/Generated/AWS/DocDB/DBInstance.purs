module CloudFormation.AWS.DocDB.DBInstance where 

import Data.Maybe (Maybe(..))
import CloudFormation.Tag (Tag)
import Record (merge)


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
type DBInstance =
  { "DBInstanceClass" :: String
  , "DBClusterIdentifier" :: String
  , "AvailabilityZone" :: Maybe String
  , "PreferredMaintenanceWindow" :: Maybe String
  , "AutoMinorVersionUpgrade" :: Maybe Boolean
  , "DBInstanceIdentifier" :: Maybe String
  , "Tags" :: Maybe (Array Tag)
  }

dbiBInstance :: { "DBInstanceClass" :: String, "DBClusterIdentifier" :: String } -> DBInstance
dbiBInstance required =
  merge required
    { "AvailabilityZone" : Nothing
    , "PreferredMaintenanceWindow" : Nothing
    , "AutoMinorVersionUpgrade" : Nothing
    , "DBInstanceIdentifier" : Nothing
    , "Tags" : Nothing
    }