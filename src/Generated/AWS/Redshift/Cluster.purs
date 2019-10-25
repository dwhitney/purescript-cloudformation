module CloudFormation.AWS.Redshift.Cluster where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import CloudFormation.Tag (Tag)
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


-- | `AWS::Redshift::Cluster`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-redshift-cluster.html
-- |
-- | - `AllowVersionUpgrade`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-redshift-cluster.html#cfn-redshift-cluster-allowversionupgrade
-- | - `AutomatedSnapshotRetentionPeriod`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-redshift-cluster.html#cfn-redshift-cluster-automatedsnapshotretentionperiod
-- | - `AvailabilityZone`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-redshift-cluster.html#cfn-redshift-cluster-availabilityzone
-- | - `ClusterIdentifier`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-redshift-cluster.html#cfn-redshift-cluster-clusteridentifier
-- | - `ClusterParameterGroupName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-redshift-cluster.html#cfn-redshift-cluster-clusterparametergroupname
-- | - `ClusterSecurityGroups`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-redshift-cluster.html#cfn-redshift-cluster-clustersecuritygroups
-- | - `ClusterSubnetGroupName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-redshift-cluster.html#cfn-redshift-cluster-clustersubnetgroupname
-- | - `ClusterType`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-redshift-cluster.html#cfn-redshift-cluster-clustertype
-- | - `ClusterVersion`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-redshift-cluster.html#cfn-redshift-cluster-clusterversion
-- | - `DBName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-redshift-cluster.html#cfn-redshift-cluster-dbname
-- | - `ElasticIp`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-redshift-cluster.html#cfn-redshift-cluster-elasticip
-- | - `Encrypted`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-redshift-cluster.html#cfn-redshift-cluster-encrypted
-- | - `HsmClientCertificateIdentifier`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-redshift-cluster.html#cfn-redshift-cluster-hsmclientcertidentifier
-- | - `HsmConfigurationIdentifier`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-redshift-cluster.html#cfn-redshift-cluster-HsmConfigurationIdentifier
-- | - `IamRoles`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-redshift-cluster.html#cfn-redshift-cluster-iamroles
-- | - `KmsKeyId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-redshift-cluster.html#cfn-redshift-cluster-kmskeyid
-- | - `LoggingProperties`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-redshift-cluster.html#cfn-redshift-cluster-loggingproperties
-- | - `MasterUserPassword`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-redshift-cluster.html#cfn-redshift-cluster-masteruserpassword
-- | - `MasterUsername`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-redshift-cluster.html#cfn-redshift-cluster-masterusername
-- | - `NodeType`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-redshift-cluster.html#cfn-redshift-cluster-nodetype
-- | - `NumberOfNodes`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-redshift-cluster.html#cfn-redshift-cluster-nodetype
-- | - `OwnerAccount`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-redshift-cluster.html#cfn-redshift-cluster-owneraccount
-- | - `Port`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-redshift-cluster.html#cfn-redshift-cluster-port
-- | - `PreferredMaintenanceWindow`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-redshift-cluster.html#cfn-redshift-cluster-preferredmaintenancewindow
-- | - `PubliclyAccessible`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-redshift-cluster.html#cfn-redshift-cluster-publiclyaccessible
-- | - `SnapshotClusterIdentifier`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-redshift-cluster.html#cfn-redshift-cluster-snapshotclusteridentifier
-- | - `SnapshotIdentifier`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-redshift-cluster.html#cfn-redshift-cluster-snapshotidentifier
-- | - `Tags`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-redshift-cluster.html#cfn-redshift-cluster-tags
-- | - `VpcSecurityGroupIds`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-redshift-cluster.html#cfn-redshift-cluster-vpcsecuritygroupids
newtype Cluster = Cluster
  { "ClusterType" :: Value String
  , "DBName" :: Value String
  , "MasterUserPassword" :: Value String
  , "MasterUsername" :: Value String
  , "NodeType" :: Value String
  , "AllowVersionUpgrade" :: Maybe (Value Boolean)
  , "AutomatedSnapshotRetentionPeriod" :: Maybe (Value Int)
  , "AvailabilityZone" :: Maybe (Value String)
  , "ClusterIdentifier" :: Maybe (Value String)
  , "ClusterParameterGroupName" :: Maybe (Value String)
  , "ClusterSecurityGroups" :: Maybe (Value (Array String))
  , "ClusterSubnetGroupName" :: Maybe (Value String)
  , "ClusterVersion" :: Maybe (Value String)
  , "ElasticIp" :: Maybe (Value String)
  , "Encrypted" :: Maybe (Value Boolean)
  , "HsmClientCertificateIdentifier" :: Maybe (Value String)
  , "HsmConfigurationIdentifier" :: Maybe (Value String)
  , "IamRoles" :: Maybe (Value (Array String))
  , "KmsKeyId" :: Maybe (Value String)
  , "LoggingProperties" :: Maybe (Value LoggingProperties)
  , "NumberOfNodes" :: Maybe (Value Int)
  , "OwnerAccount" :: Maybe (Value String)
  , "Port" :: Maybe (Value Int)
  , "PreferredMaintenanceWindow" :: Maybe (Value String)
  , "PubliclyAccessible" :: Maybe (Value Boolean)
  , "SnapshotClusterIdentifier" :: Maybe (Value String)
  , "SnapshotIdentifier" :: Maybe (Value String)
  , "Tags" :: Maybe (Value (Array Tag))
  , "VpcSecurityGroupIds" :: Maybe (Value (Array String))
  }

derive instance newtypeCluster :: Newtype Cluster _
derive newtype instance writeCluster :: WriteForeign Cluster
instance resourceCluster :: Resource Cluster where type_ _ = "AWS::Redshift::Cluster"

cluster :: { "ClusterType" :: Value String, "DBName" :: Value String, "MasterUserPassword" :: Value String, "MasterUsername" :: Value String, "NodeType" :: Value String } -> Cluster
cluster required = Cluster
  (merge required
    { "AllowVersionUpgrade" : Nothing
    , "AutomatedSnapshotRetentionPeriod" : Nothing
    , "AvailabilityZone" : Nothing
    , "ClusterIdentifier" : Nothing
    , "ClusterParameterGroupName" : Nothing
    , "ClusterSecurityGroups" : Nothing
    , "ClusterSubnetGroupName" : Nothing
    , "ClusterVersion" : Nothing
    , "ElasticIp" : Nothing
    , "Encrypted" : Nothing
    , "HsmClientCertificateIdentifier" : Nothing
    , "HsmConfigurationIdentifier" : Nothing
    , "IamRoles" : Nothing
    , "KmsKeyId" : Nothing
    , "LoggingProperties" : Nothing
    , "NumberOfNodes" : Nothing
    , "OwnerAccount" : Nothing
    , "Port" : Nothing
    , "PreferredMaintenanceWindow" : Nothing
    , "PubliclyAccessible" : Nothing
    , "SnapshotClusterIdentifier" : Nothing
    , "SnapshotIdentifier" : Nothing
    , "Tags" : Nothing
    , "VpcSecurityGroupIds" : Nothing
    })

-- | `AWS::Redshift::Cluster.LoggingProperties`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-redshift-cluster-loggingproperties.html
-- |
-- | - `BucketName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-redshift-cluster-loggingproperties.html#cfn-redshift-cluster-loggingproperties-bucketname
-- | - `S3KeyPrefix`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-redshift-cluster-loggingproperties.html#cfn-redshift-cluster-loggingproperties-s3keyprefix
type LoggingProperties =
  { "BucketName" :: Value String
  , "S3KeyPrefix" :: Maybe (Value String)
  }

loggingProperties :: { "BucketName" :: Value String } -> LoggingProperties
loggingProperties required =
  (merge required
    { "S3KeyPrefix" : Nothing
    })