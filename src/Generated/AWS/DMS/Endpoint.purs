module CloudFormation.AWS.DMS.Endpoint where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import CloudFormation.Tag (Tag)
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


-- | `AWS::DMS::Endpoint`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dms-endpoint.html
-- |
-- | - `KmsKeyId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dms-endpoint.html#cfn-dms-endpoint-kmskeyid
-- | - `Port`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dms-endpoint.html#cfn-dms-endpoint-port
-- | - `DatabaseName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dms-endpoint.html#cfn-dms-endpoint-databasename
-- | - `ElasticsearchSettings`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dms-endpoint.html#cfn-dms-endpoint-elasticsearchsettings
-- | - `S3Settings`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dms-endpoint.html#cfn-dms-endpoint-s3settings
-- | - `EngineName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dms-endpoint.html#cfn-dms-endpoint-enginename
-- | - `DynamoDbSettings`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dms-endpoint.html#cfn-dms-endpoint-dynamodbsettings
-- | - `KinesisSettings`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dms-endpoint.html#cfn-dms-endpoint-kinesissettings
-- | - `Username`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dms-endpoint.html#cfn-dms-endpoint-username
-- | - `SslMode`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dms-endpoint.html#cfn-dms-endpoint-sslmode
-- | - `ServerName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dms-endpoint.html#cfn-dms-endpoint-servername
-- | - `ExtraConnectionAttributes`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dms-endpoint.html#cfn-dms-endpoint-extraconnectionattributes
-- | - `EndpointType`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dms-endpoint.html#cfn-dms-endpoint-endpointtype
-- | - `Tags`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dms-endpoint.html#cfn-dms-endpoint-tags
-- | - `EndpointIdentifier`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dms-endpoint.html#cfn-dms-endpoint-endpointidentifier
-- | - `Password`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dms-endpoint.html#cfn-dms-endpoint-password
-- | - `CertificateArn`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dms-endpoint.html#cfn-dms-endpoint-certificatearn
-- | - `MongoDbSettings`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dms-endpoint.html#cfn-dms-endpoint-mongodbsettings
newtype Endpoint = Endpoint
  { "EngineName" :: Value String
  , "EndpointType" :: Value String
  , "KmsKeyId" :: Maybe (Value String)
  , "Port" :: Maybe (Value Int)
  , "DatabaseName" :: Maybe (Value String)
  , "ElasticsearchSettings" :: Maybe (Value ElasticsearchSettings)
  , "S3Settings" :: Maybe (Value S3Settings)
  , "DynamoDbSettings" :: Maybe (Value DynamoDbSettings)
  , "KinesisSettings" :: Maybe (Value KinesisSettings)
  , "Username" :: Maybe (Value String)
  , "SslMode" :: Maybe (Value String)
  , "ServerName" :: Maybe (Value String)
  , "ExtraConnectionAttributes" :: Maybe (Value String)
  , "Tags" :: Maybe (Value (Array Tag))
  , "EndpointIdentifier" :: Maybe (Value String)
  , "Password" :: Maybe (Value String)
  , "CertificateArn" :: Maybe (Value String)
  , "MongoDbSettings" :: Maybe (Value MongoDbSettings)
  }

derive instance newtypeEndpoint :: Newtype Endpoint _
derive newtype instance writeEndpoint :: WriteForeign Endpoint
instance resourceEndpoint :: Resource Endpoint where type_ _ = "AWS::DMS::Endpoint"

endpoint :: { "EngineName" :: Value String, "EndpointType" :: Value String } -> Endpoint
endpoint required = Endpoint
  (merge required
    { "KmsKeyId" : Nothing
    , "Port" : Nothing
    , "DatabaseName" : Nothing
    , "ElasticsearchSettings" : Nothing
    , "S3Settings" : Nothing
    , "DynamoDbSettings" : Nothing
    , "KinesisSettings" : Nothing
    , "Username" : Nothing
    , "SslMode" : Nothing
    , "ServerName" : Nothing
    , "ExtraConnectionAttributes" : Nothing
    , "Tags" : Nothing
    , "EndpointIdentifier" : Nothing
    , "Password" : Nothing
    , "CertificateArn" : Nothing
    , "MongoDbSettings" : Nothing
    })

-- | `AWS::DMS::Endpoint.ElasticsearchSettings`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-endpoint-elasticsearchsettings.html
-- |
-- | - `EndpointUri`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-endpoint-elasticsearchsettings.html#cfn-dms-endpoint-elasticsearchsettings-endpointuri
-- | - `FullLoadErrorPercentage`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-endpoint-elasticsearchsettings.html#cfn-dms-endpoint-elasticsearchsettings-fullloaderrorpercentage
-- | - `ErrorRetryDuration`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-endpoint-elasticsearchsettings.html#cfn-dms-endpoint-elasticsearchsettings-errorretryduration
-- | - `ServiceAccessRoleArn`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-endpoint-elasticsearchsettings.html#cfn-dms-endpoint-elasticsearchsettings-serviceaccessrolearn
type ElasticsearchSettings =
  { "EndpointUri" :: Maybe (Value String)
  , "FullLoadErrorPercentage" :: Maybe (Value Int)
  , "ErrorRetryDuration" :: Maybe (Value Int)
  , "ServiceAccessRoleArn" :: Maybe (Value String)
  }

elasticsearchSettings :: ElasticsearchSettings
elasticsearchSettings =
  { "EndpointUri" : Nothing
  , "FullLoadErrorPercentage" : Nothing
  , "ErrorRetryDuration" : Nothing
  , "ServiceAccessRoleArn" : Nothing
  }

-- | `AWS::DMS::Endpoint.DynamoDbSettings`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-endpoint-dynamodbsettings.html
-- |
-- | - `ServiceAccessRoleArn`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-endpoint-dynamodbsettings.html#cfn-dms-endpoint-dynamodbsettings-serviceaccessrolearn
type DynamoDbSettings =
  { "ServiceAccessRoleArn" :: Maybe (Value String)
  }

dynamoDbSettings :: DynamoDbSettings
dynamoDbSettings =
  { "ServiceAccessRoleArn" : Nothing
  }

-- | `AWS::DMS::Endpoint.MongoDbSettings`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-endpoint-mongodbsettings.html
-- |
-- | - `AuthSource`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-endpoint-mongodbsettings.html#cfn-dms-endpoint-mongodbsettings-authsource
-- | - `AuthMechanism`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-endpoint-mongodbsettings.html#cfn-dms-endpoint-mongodbsettings-authmechanism
-- | - `Username`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-endpoint-mongodbsettings.html#cfn-dms-endpoint-mongodbsettings-username
-- | - `DocsToInvestigate`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-endpoint-mongodbsettings.html#cfn-dms-endpoint-mongodbsettings-docstoinvestigate
-- | - `ServerName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-endpoint-mongodbsettings.html#cfn-dms-endpoint-mongodbsettings-servername
-- | - `Port`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-endpoint-mongodbsettings.html#cfn-dms-endpoint-mongodbsettings-port
-- | - `ExtractDocId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-endpoint-mongodbsettings.html#cfn-dms-endpoint-mongodbsettings-extractdocid
-- | - `DatabaseName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-endpoint-mongodbsettings.html#cfn-dms-endpoint-mongodbsettings-databasename
-- | - `AuthType`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-endpoint-mongodbsettings.html#cfn-dms-endpoint-mongodbsettings-authtype
-- | - `Password`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-endpoint-mongodbsettings.html#cfn-dms-endpoint-mongodbsettings-password
-- | - `NestingLevel`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-endpoint-mongodbsettings.html#cfn-dms-endpoint-mongodbsettings-nestinglevel
type MongoDbSettings =
  { "AuthSource" :: Maybe (Value String)
  , "AuthMechanism" :: Maybe (Value String)
  , "Username" :: Maybe (Value String)
  , "DocsToInvestigate" :: Maybe (Value String)
  , "ServerName" :: Maybe (Value String)
  , "Port" :: Maybe (Value Int)
  , "ExtractDocId" :: Maybe (Value String)
  , "DatabaseName" :: Maybe (Value String)
  , "AuthType" :: Maybe (Value String)
  , "Password" :: Maybe (Value String)
  , "NestingLevel" :: Maybe (Value String)
  }

mongoDbSettings :: MongoDbSettings
mongoDbSettings =
  { "AuthSource" : Nothing
  , "AuthMechanism" : Nothing
  , "Username" : Nothing
  , "DocsToInvestigate" : Nothing
  , "ServerName" : Nothing
  , "Port" : Nothing
  , "ExtractDocId" : Nothing
  , "DatabaseName" : Nothing
  , "AuthType" : Nothing
  , "Password" : Nothing
  , "NestingLevel" : Nothing
  }

-- | `AWS::DMS::Endpoint.S3Settings`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-endpoint-s3settings.html
-- |
-- | - `ExternalTableDefinition`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-endpoint-s3settings.html#cfn-dms-endpoint-s3settings-externaltabledefinition
-- | - `BucketName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-endpoint-s3settings.html#cfn-dms-endpoint-s3settings-bucketname
-- | - `BucketFolder`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-endpoint-s3settings.html#cfn-dms-endpoint-s3settings-bucketfolder
-- | - `CsvRowDelimiter`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-endpoint-s3settings.html#cfn-dms-endpoint-s3settings-csvrowdelimiter
-- | - `CsvDelimiter`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-endpoint-s3settings.html#cfn-dms-endpoint-s3settings-csvdelimiter
-- | - `ServiceAccessRoleArn`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-endpoint-s3settings.html#cfn-dms-endpoint-s3settings-serviceaccessrolearn
-- | - `CompressionType`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-endpoint-s3settings.html#cfn-dms-endpoint-s3settings-compressiontype
type S3Settings =
  { "ExternalTableDefinition" :: Maybe (Value String)
  , "BucketName" :: Maybe (Value String)
  , "BucketFolder" :: Maybe (Value String)
  , "CsvRowDelimiter" :: Maybe (Value String)
  , "CsvDelimiter" :: Maybe (Value String)
  , "ServiceAccessRoleArn" :: Maybe (Value String)
  , "CompressionType" :: Maybe (Value String)
  }

s3Settings :: S3Settings
s3Settings =
  { "ExternalTableDefinition" : Nothing
  , "BucketName" : Nothing
  , "BucketFolder" : Nothing
  , "CsvRowDelimiter" : Nothing
  , "CsvDelimiter" : Nothing
  , "ServiceAccessRoleArn" : Nothing
  , "CompressionType" : Nothing
  }

-- | `AWS::DMS::Endpoint.KinesisSettings`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-endpoint-kinesissettings.html
-- |
-- | - `MessageFormat`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-endpoint-kinesissettings.html#cfn-dms-endpoint-kinesissettings-messageformat
-- | - `StreamArn`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-endpoint-kinesissettings.html#cfn-dms-endpoint-kinesissettings-streamarn
-- | - `ServiceAccessRoleArn`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-endpoint-kinesissettings.html#cfn-dms-endpoint-kinesissettings-serviceaccessrolearn
type KinesisSettings =
  { "MessageFormat" :: Maybe (Value String)
  , "StreamArn" :: Maybe (Value String)
  , "ServiceAccessRoleArn" :: Maybe (Value String)
  }

kinesisSettings :: KinesisSettings
kinesisSettings =
  { "MessageFormat" : Nothing
  , "StreamArn" : Nothing
  , "ServiceAccessRoleArn" : Nothing
  }