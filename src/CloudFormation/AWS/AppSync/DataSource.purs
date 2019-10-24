module CloudFormation.AWS.AppSync.DataSource where 

import Data.Maybe (Maybe(..))
import Record (merge)


type DataSource =
  { "Type" :: String
  , "ApiId" :: String
  , "Name" :: String
  , "Description" :: Maybe String
  , "ServiceRoleArn" :: Maybe String
  , "HttpConfig" :: Maybe HttpConfig
  , "RelationalDatabaseConfig" :: Maybe RelationalDatabaseConfig
  , "LambdaConfig" :: Maybe LambdaConfig
  , "DynamoDBConfig" :: Maybe DynamoDBConfig
  , "ElasticsearchConfig" :: Maybe ElasticsearchConfig
  }

dataSource :: { "Type" :: String, "ApiId" :: String, "Name" :: String } -> DataSource
dataSource required =
  merge required
    { "Description" : Nothing
    , "ServiceRoleArn" : Nothing
    , "HttpConfig" : Nothing
    , "RelationalDatabaseConfig" : Nothing
    , "LambdaConfig" : Nothing
    , "DynamoDBConfig" : Nothing
    , "ElasticsearchConfig" : Nothing
    }

type ElasticsearchConfig =
  { "AwsRegion" :: String
  , "Endpoint" :: String
  }

elasticsearchConfig :: { "AwsRegion" :: String, "Endpoint" :: String } -> ElasticsearchConfig
elasticsearchConfig required =
  required

type HttpConfig =
  { "Endpoint" :: String
  , "AuthorizationConfig" :: Maybe AuthorizationConfig
  }

httpConfig :: { "Endpoint" :: String } -> HttpConfig
httpConfig required =
  merge required
    { "AuthorizationConfig" : Nothing
    }

type LambdaConfig =
  { "LambdaFunctionArn" :: String
  }

lambdaConfig :: { "LambdaFunctionArn" :: String } -> LambdaConfig
lambdaConfig required =
  required

type RdsHttpEndpointConfig =
  { "AwsRegion" :: String
  , "DbClusterIdentifier" :: String
  , "AwsSecretStoreArn" :: String
  , "Schema" :: Maybe String
  , "DatabaseName" :: Maybe String
  }

rdsHttpEndpointConfig :: { "AwsRegion" :: String, "DbClusterIdentifier" :: String, "AwsSecretStoreArn" :: String } -> RdsHttpEndpointConfig
rdsHttpEndpointConfig required =
  merge required
    { "Schema" : Nothing
    , "DatabaseName" : Nothing
    }

type AuthorizationConfig =
  { "AuthorizationType" :: String
  , "AwsIamConfig" :: Maybe AwsIamConfig
  }

authorizationConfig :: { "AuthorizationType" :: String } -> AuthorizationConfig
authorizationConfig required =
  merge required
    { "AwsIamConfig" : Nothing
    }

type DynamoDBConfig =
  { "TableName" :: String
  , "AwsRegion" :: String
  , "UseCallerCredentials" :: Maybe Boolean
  }

dynamoDBConfig :: { "TableName" :: String, "AwsRegion" :: String } -> DynamoDBConfig
dynamoDBConfig required =
  merge required
    { "UseCallerCredentials" : Nothing
    }

type AwsIamConfig =
  { "SigningRegion" :: Maybe String
  , "SigningServiceName" :: Maybe String
  }

awsIamConfig :: AwsIamConfig
awsIamConfig =
  { "SigningRegion" : Nothing
  , "SigningServiceName" : Nothing
  }

type RelationalDatabaseConfig =
  { "RelationalDatabaseSourceType" :: String
  , "RdsHttpEndpointConfig" :: Maybe RdsHttpEndpointConfig
  }

relationalDatabaseConfig :: { "RelationalDatabaseSourceType" :: String } -> RelationalDatabaseConfig
relationalDatabaseConfig required =
  merge required
    { "RdsHttpEndpointConfig" : Nothing
    }