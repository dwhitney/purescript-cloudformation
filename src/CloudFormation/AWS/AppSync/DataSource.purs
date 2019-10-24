module CloudFormation.AWS.AppSync.DataSource where 

import Data.Maybe (Maybe(..))
import Record (merge)


-- | `AWS::AppSync::DataSource`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appsync-datasource.html-- |
-- | - `Type`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appsync-datasource.html#cfn-appsync-datasource-type
-- | - `Description`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appsync-datasource.html#cfn-appsync-datasource-description
-- | - `ServiceRoleArn`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appsync-datasource.html#cfn-appsync-datasource-servicerolearn
-- | - `HttpConfig`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appsync-datasource.html#cfn-appsync-datasource-httpconfig
-- | - `RelationalDatabaseConfig`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appsync-datasource.html#cfn-appsync-datasource-relationaldatabaseconfig
-- | - `LambdaConfig`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appsync-datasource.html#cfn-appsync-datasource-lambdaconfig
-- | - `ApiId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appsync-datasource.html#cfn-appsync-datasource-apiid
-- | - `Name`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appsync-datasource.html#cfn-appsync-datasource-name
-- | - `DynamoDBConfig`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appsync-datasource.html#cfn-appsync-datasource-dynamodbconfig
-- | - `ElasticsearchConfig`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appsync-datasource.html#cfn-appsync-datasource-elasticsearchconfig
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

-- | `AWS::AppSync::DataSource.ElasticsearchConfig`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-datasource-elasticsearchconfig.html-- |
-- | - `AwsRegion`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-datasource-elasticsearchconfig.html#cfn-appsync-datasource-elasticsearchconfig-awsregion
-- | - `Endpoint`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-datasource-elasticsearchconfig.html#cfn-appsync-datasource-elasticsearchconfig-endpoint
type ElasticsearchConfig =
  { "AwsRegion" :: String
  , "Endpoint" :: String
  }

elasticsearchConfig :: { "AwsRegion" :: String, "Endpoint" :: String } -> ElasticsearchConfig
elasticsearchConfig required =
  required

-- | `AWS::AppSync::DataSource.HttpConfig`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-datasource-httpconfig.html-- |
-- | - `Endpoint`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-datasource-httpconfig.html#cfn-appsync-datasource-httpconfig-endpoint
-- | - `AuthorizationConfig`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-datasource-httpconfig.html#cfn-appsync-datasource-httpconfig-authorizationconfig
type HttpConfig =
  { "Endpoint" :: String
  , "AuthorizationConfig" :: Maybe AuthorizationConfig
  }

httpConfig :: { "Endpoint" :: String } -> HttpConfig
httpConfig required =
  merge required
    { "AuthorizationConfig" : Nothing
    }

-- | `AWS::AppSync::DataSource.LambdaConfig`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-datasource-lambdaconfig.html-- |
-- | - `LambdaFunctionArn`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-datasource-lambdaconfig.html#cfn-appsync-datasource-lambdaconfig-lambdafunctionarn
type LambdaConfig =
  { "LambdaFunctionArn" :: String
  }

lambdaConfig :: { "LambdaFunctionArn" :: String } -> LambdaConfig
lambdaConfig required =
  required

-- | `AWS::AppSync::DataSource.RdsHttpEndpointConfig`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-datasource-rdshttpendpointconfig.html-- |
-- | - `AwsRegion`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-datasource-rdshttpendpointconfig.html#cfn-appsync-datasource-rdshttpendpointconfig-awsregion
-- | - `Schema`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-datasource-rdshttpendpointconfig.html#cfn-appsync-datasource-rdshttpendpointconfig-schema
-- | - `DatabaseName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-datasource-rdshttpendpointconfig.html#cfn-appsync-datasource-rdshttpendpointconfig-databasename
-- | - `DbClusterIdentifier`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-datasource-rdshttpendpointconfig.html#cfn-appsync-datasource-rdshttpendpointconfig-dbclusteridentifier
-- | - `AwsSecretStoreArn`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-datasource-rdshttpendpointconfig.html#cfn-appsync-datasource-rdshttpendpointconfig-awssecretstorearn
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

-- | `AWS::AppSync::DataSource.AuthorizationConfig`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-datasource-authorizationconfig.html-- |
-- | - `AwsIamConfig`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-datasource-authorizationconfig.html#cfn-appsync-datasource-authorizationconfig-awsiamconfig
-- | - `AuthorizationType`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-datasource-authorizationconfig.html#cfn-appsync-datasource-authorizationconfig-authorizationtype
type AuthorizationConfig =
  { "AuthorizationType" :: String
  , "AwsIamConfig" :: Maybe AwsIamConfig
  }

authorizationConfig :: { "AuthorizationType" :: String } -> AuthorizationConfig
authorizationConfig required =
  merge required
    { "AwsIamConfig" : Nothing
    }

-- | `AWS::AppSync::DataSource.DynamoDBConfig`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-datasource-dynamodbconfig.html-- |
-- | - `TableName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-datasource-dynamodbconfig.html#cfn-appsync-datasource-dynamodbconfig-tablename
-- | - `AwsRegion`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-datasource-dynamodbconfig.html#cfn-appsync-datasource-dynamodbconfig-awsregion
-- | - `UseCallerCredentials`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-datasource-dynamodbconfig.html#cfn-appsync-datasource-dynamodbconfig-usecallercredentials
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

-- | `AWS::AppSync::DataSource.AwsIamConfig`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-datasource-awsiamconfig.html-- |
-- | - `SigningRegion`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-datasource-awsiamconfig.html#cfn-appsync-datasource-awsiamconfig-signingregion
-- | - `SigningServiceName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-datasource-awsiamconfig.html#cfn-appsync-datasource-awsiamconfig-signingservicename
type AwsIamConfig =
  { "SigningRegion" :: Maybe String
  , "SigningServiceName" :: Maybe String
  }

awsIamConfig :: AwsIamConfig
awsIamConfig =
  { "SigningRegion" : Nothing
  , "SigningServiceName" : Nothing
  }

-- | `AWS::AppSync::DataSource.RelationalDatabaseConfig`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-datasource-relationaldatabaseconfig.html-- |
-- | - `RdsHttpEndpointConfig`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-datasource-relationaldatabaseconfig.html#cfn-appsync-datasource-relationaldatabaseconfig-rdshttpendpointconfig
-- | - `RelationalDatabaseSourceType`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-datasource-relationaldatabaseconfig.html#cfn-appsync-datasource-relationaldatabaseconfig-relationaldatabasesourcetype
type RelationalDatabaseConfig =
  { "RelationalDatabaseSourceType" :: String
  , "RdsHttpEndpointConfig" :: Maybe RdsHttpEndpointConfig
  }

relationalDatabaseConfig :: { "RelationalDatabaseSourceType" :: String } -> RelationalDatabaseConfig
relationalDatabaseConfig required =
  merge required
    { "RdsHttpEndpointConfig" : Nothing
    }