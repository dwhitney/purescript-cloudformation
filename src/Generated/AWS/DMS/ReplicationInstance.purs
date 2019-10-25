module CloudFormation.AWS.DMS.ReplicationInstance where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import CloudFormation.Tag (Tag)
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


-- | `AWS::DMS::ReplicationInstance`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dms-replicationinstance.html
-- |
-- | - `ReplicationInstanceIdentifier`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dms-replicationinstance.html#cfn-dms-replicationinstance-replicationinstanceidentifier
-- | - `EngineVersion`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dms-replicationinstance.html#cfn-dms-replicationinstance-engineversion
-- | - `KmsKeyId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dms-replicationinstance.html#cfn-dms-replicationinstance-kmskeyid
-- | - `AvailabilityZone`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dms-replicationinstance.html#cfn-dms-replicationinstance-availabilityzone
-- | - `PreferredMaintenanceWindow`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dms-replicationinstance.html#cfn-dms-replicationinstance-preferredmaintenancewindow
-- | - `AutoMinorVersionUpgrade`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dms-replicationinstance.html#cfn-dms-replicationinstance-autominorversionupgrade
-- | - `ReplicationSubnetGroupIdentifier`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dms-replicationinstance.html#cfn-dms-replicationinstance-replicationsubnetgroupidentifier
-- | - `AllocatedStorage`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dms-replicationinstance.html#cfn-dms-replicationinstance-allocatedstorage
-- | - `VpcSecurityGroupIds`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dms-replicationinstance.html#cfn-dms-replicationinstance-vpcsecuritygroupids
-- | - `AllowMajorVersionUpgrade`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dms-replicationinstance.html#cfn-dms-replicationinstance-allowmajorversionupgrade
-- | - `ReplicationInstanceClass`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dms-replicationinstance.html#cfn-dms-replicationinstance-replicationinstanceclass
-- | - `PubliclyAccessible`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dms-replicationinstance.html#cfn-dms-replicationinstance-publiclyaccessible
-- | - `MultiAZ`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dms-replicationinstance.html#cfn-dms-replicationinstance-multiaz
-- | - `Tags`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dms-replicationinstance.html#cfn-dms-replicationinstance-tags
newtype ReplicationInstance = ReplicationInstance
  { "ReplicationInstanceClass" :: Value String
  , "ReplicationInstanceIdentifier" :: Maybe (Value String)
  , "EngineVersion" :: Maybe (Value String)
  , "KmsKeyId" :: Maybe (Value String)
  , "AvailabilityZone" :: Maybe (Value String)
  , "PreferredMaintenanceWindow" :: Maybe (Value String)
  , "AutoMinorVersionUpgrade" :: Maybe (Value Boolean)
  , "ReplicationSubnetGroupIdentifier" :: Maybe (Value String)
  , "AllocatedStorage" :: Maybe (Value Int)
  , "VpcSecurityGroupIds" :: Maybe (Value (Array String))
  , "AllowMajorVersionUpgrade" :: Maybe (Value Boolean)
  , "PubliclyAccessible" :: Maybe (Value Boolean)
  , "MultiAZ" :: Maybe (Value Boolean)
  , "Tags" :: Maybe (Value (Array Tag))
  }

derive instance newtypeReplicationInstance :: Newtype ReplicationInstance _
derive newtype instance writeReplicationInstance :: WriteForeign ReplicationInstance
instance resourceReplicationInstance :: Resource ReplicationInstance where type_ _ = "AWS::DMS::ReplicationInstance"

replicationInstance :: { "ReplicationInstanceClass" :: Value String } -> ReplicationInstance
replicationInstance required = ReplicationInstance
  (merge required
    { "ReplicationInstanceIdentifier" : Nothing
    , "EngineVersion" : Nothing
    , "KmsKeyId" : Nothing
    , "AvailabilityZone" : Nothing
    , "PreferredMaintenanceWindow" : Nothing
    , "AutoMinorVersionUpgrade" : Nothing
    , "ReplicationSubnetGroupIdentifier" : Nothing
    , "AllocatedStorage" : Nothing
    , "VpcSecurityGroupIds" : Nothing
    , "AllowMajorVersionUpgrade" : Nothing
    , "PubliclyAccessible" : Nothing
    , "MultiAZ" : Nothing
    , "Tags" : Nothing
    })