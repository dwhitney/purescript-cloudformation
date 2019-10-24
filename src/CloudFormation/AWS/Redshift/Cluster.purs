module CloudFormation.AWS.Redshift.Cluster where 

import Data.Maybe (Maybe(..))
import CloudFormation.Tag (Tag)
import Record (merge)


type Cluster =
  { "ClusterType" :: String
  , "DBName" :: String
  , "MasterUserPassword" :: String
  , "MasterUsername" :: String
  , "NodeType" :: String
  , "AllowVersionUpgrade" :: Maybe Boolean
  , "AutomatedSnapshotRetentionPeriod" :: Maybe Int
  , "AvailabilityZone" :: Maybe String
  , "ClusterIdentifier" :: Maybe String
  , "ClusterParameterGroupName" :: Maybe String
  , "ClusterSecurityGroups" :: Maybe (Array String)
  , "ClusterSubnetGroupName" :: Maybe String
  , "ClusterVersion" :: Maybe String
  , "ElasticIp" :: Maybe String
  , "Encrypted" :: Maybe Boolean
  , "HsmClientCertificateIdentifier" :: Maybe String
  , "HsmConfigurationIdentifier" :: Maybe String
  , "IamRoles" :: Maybe (Array String)
  , "KmsKeyId" :: Maybe String
  , "LoggingProperties" :: Maybe LoggingProperties
  , "NumberOfNodes" :: Maybe Int
  , "OwnerAccount" :: Maybe String
  , "Port" :: Maybe Int
  , "PreferredMaintenanceWindow" :: Maybe String
  , "PubliclyAccessible" :: Maybe Boolean
  , "SnapshotClusterIdentifier" :: Maybe String
  , "SnapshotIdentifier" :: Maybe String
  , "Tags" :: Maybe (Array Tag)
  , "VpcSecurityGroupIds" :: Maybe (Array String)
  }

cluster :: { "ClusterType" :: String, "DBName" :: String, "MasterUserPassword" :: String, "MasterUsername" :: String, "NodeType" :: String } -> Cluster
cluster required =
  merge required
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
    }

type LoggingProperties =
  { "BucketName" :: String
  , "S3KeyPrefix" :: Maybe String
  }

loggingProperties :: { "BucketName" :: String } -> LoggingProperties
loggingProperties required =
  merge required
    { "S3KeyPrefix" : Nothing
    }