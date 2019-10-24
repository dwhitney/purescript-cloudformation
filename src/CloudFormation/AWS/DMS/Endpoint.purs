module CloudFormation.AWS.DMS.Endpoint where 

import Data.Maybe (Maybe(..))
import CloudFormation.Tag (Tag)
import Record (merge)


type Endpoint =
  { "EngineName" :: String
  , "EndpointType" :: String
  , "KmsKeyId" :: Maybe String
  , "Port" :: Maybe Int
  , "DatabaseName" :: Maybe String
  , "ElasticsearchSettings" :: Maybe ElasticsearchSettings
  , "S3Settings" :: Maybe S3Settings
  , "DynamoDbSettings" :: Maybe DynamoDbSettings
  , "KinesisSettings" :: Maybe KinesisSettings
  , "Username" :: Maybe String
  , "SslMode" :: Maybe String
  , "ServerName" :: Maybe String
  , "ExtraConnectionAttributes" :: Maybe String
  , "Tags" :: Maybe (Array Tag)
  , "EndpointIdentifier" :: Maybe String
  , "Password" :: Maybe String
  , "CertificateArn" :: Maybe String
  , "MongoDbSettings" :: Maybe MongoDbSettings
  }

endpoint :: { "EngineName" :: String, "EndpointType" :: String } -> Endpoint
endpoint required =
  merge required
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
    }

type ElasticsearchSettings =
  { "EndpointUri" :: Maybe String
  , "FullLoadErrorPercentage" :: Maybe Int
  , "ErrorRetryDuration" :: Maybe Int
  , "ServiceAccessRoleArn" :: Maybe String
  }

elasticsearchSettings :: ElasticsearchSettings
elasticsearchSettings =
  { "EndpointUri" : Nothing
  , "FullLoadErrorPercentage" : Nothing
  , "ErrorRetryDuration" : Nothing
  , "ServiceAccessRoleArn" : Nothing
  }

type DynamoDbSettings =
  { "ServiceAccessRoleArn" :: Maybe String
  }

dynamoDbSettings :: DynamoDbSettings
dynamoDbSettings =
  { "ServiceAccessRoleArn" : Nothing
  }

type MongoDbSettings =
  { "AuthSource" :: Maybe String
  , "AuthMechanism" :: Maybe String
  , "Username" :: Maybe String
  , "DocsToInvestigate" :: Maybe String
  , "ServerName" :: Maybe String
  , "Port" :: Maybe Int
  , "ExtractDocId" :: Maybe String
  , "DatabaseName" :: Maybe String
  , "AuthType" :: Maybe String
  , "Password" :: Maybe String
  , "NestingLevel" :: Maybe String
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

type S3Settings =
  { "ExternalTableDefinition" :: Maybe String
  , "BucketName" :: Maybe String
  , "BucketFolder" :: Maybe String
  , "CsvRowDelimiter" :: Maybe String
  , "CsvDelimiter" :: Maybe String
  , "ServiceAccessRoleArn" :: Maybe String
  , "CompressionType" :: Maybe String
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

type KinesisSettings =
  { "MessageFormat" :: Maybe String
  , "StreamArn" :: Maybe String
  , "ServiceAccessRoleArn" :: Maybe String
  }

kinesisSettings :: KinesisSettings
kinesisSettings =
  { "MessageFormat" : Nothing
  , "StreamArn" : Nothing
  , "ServiceAccessRoleArn" : Nothing
  }