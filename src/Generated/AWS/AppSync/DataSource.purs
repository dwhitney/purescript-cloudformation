module CloudFormation.AWS.AppSync.DataSource where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


-- | `AWS::AppSync::DataSource`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appsync-datasource.html
-- |
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
newtype DataSource = DataSource
  { "Type" :: Value String
  , "ApiId" :: Value String
  , "Name" :: Value String
  , "Description" :: Maybe (Value String)
  , "ServiceRoleArn" :: Maybe (Value String)
  , "HttpConfig" :: Maybe (Value HttpConfig)
  , "RelationalDatabaseConfig" :: Maybe (Value RelationalDatabaseConfig)
  , "LambdaConfig" :: Maybe (Value LambdaConfig)
  , "DynamoDBConfig" :: Maybe (Value DynamoDBConfig)
  , "ElasticsearchConfig" :: Maybe (Value ElasticsearchConfig)
  }

derive instance newtypeDataSource :: Newtype DataSource _
derive newtype instance writeDataSource :: WriteForeign DataSource
instance resourceDataSource :: Resource DataSource where type_ _ = "AWS::AppSync::DataSource"

dataSource :: { "Type" :: Value String, "ApiId" :: Value String, "Name" :: Value String } -> DataSource
dataSource required = DataSource
  (merge required
    { "Description" : Nothing
    , "ServiceRoleArn" : Nothing
    , "HttpConfig" : Nothing
    , "RelationalDatabaseConfig" : Nothing
    , "LambdaConfig" : Nothing
    , "DynamoDBConfig" : Nothing
    , "ElasticsearchConfig" : Nothing
    })

-- | `AWS::AppSync::DataSource.ElasticsearchConfig`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-datasource-elasticsearchconfig.html
-- |
-- | - `AwsRegion`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-datasource-elasticsearchconfig.html#cfn-appsync-datasource-elasticsearchconfig-awsregion
-- | - `Endpoint`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-datasource-elasticsearchconfig.html#cfn-appsync-datasource-elasticsearchconfig-endpoint
type ElasticsearchConfig =
  { "AwsRegion" :: Value String
  , "Endpoint" :: Value String
  }

elasticsearchConfig :: { "AwsRegion" :: Value String, "Endpoint" :: Value String } -> ElasticsearchConfig
elasticsearchConfig required =
  required

-- | `AWS::AppSync::DataSource.HttpConfig`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-datasource-httpconfig.html
-- |
-- | - `Endpoint`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-datasource-httpconfig.html#cfn-appsync-datasource-httpconfig-endpoint
-- | - `AuthorizationConfig`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-datasource-httpconfig.html#cfn-appsync-datasource-httpconfig-authorizationconfig
type HttpConfig =
  { "Endpoint" :: Value String
  , "AuthorizationConfig" :: Maybe (Value AuthorizationConfig)
  }

httpConfig :: { "Endpoint" :: Value String } -> HttpConfig
httpConfig required =
  (merge required
    { "AuthorizationConfig" : Nothing
    })

-- | `AWS::AppSync::DataSource.LambdaConfig`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-datasource-lambdaconfig.html
-- |
-- | - `LambdaFunctionArn`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-datasource-lambdaconfig.html#cfn-appsync-datasource-lambdaconfig-lambdafunctionarn
type LambdaConfig =
  { "LambdaFunctionArn" :: Value String
  }

lambdaConfig :: { "LambdaFunctionArn" :: Value String } -> LambdaConfig
lambdaConfig required =
  required

-- | `AWS::AppSync::DataSource.RdsHttpEndpointConfig`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-datasource-rdshttpendpointconfig.html
-- |
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
  { "AwsRegion" :: Value String
  , "DbClusterIdentifier" :: Value String
  , "AwsSecretStoreArn" :: Value String
  , "Schema" :: Maybe (Value String)
  , "DatabaseName" :: Maybe (Value String)
  }

rdsHttpEndpointConfig :: { "AwsRegion" :: Value String, "DbClusterIdentifier" :: Value String, "AwsSecretStoreArn" :: Value String } -> RdsHttpEndpointConfig
rdsHttpEndpointConfig required =
  (merge required
    { "Schema" : Nothing
    , "DatabaseName" : Nothing
    })

-- | `AWS::AppSync::DataSource.AuthorizationConfig`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-datasource-authorizationconfig.html
-- |
-- | - `AwsIamConfig`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-datasource-authorizationconfig.html#cfn-appsync-datasource-authorizationconfig-awsiamconfig
-- | - `AuthorizationType`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-datasource-authorizationconfig.html#cfn-appsync-datasource-authorizationconfig-authorizationtype
type AuthorizationConfig =
  { "AuthorizationType" :: Value String
  , "AwsIamConfig" :: Maybe (Value AwsIamConfig)
  }

authorizationConfig :: { "AuthorizationType" :: Value String } -> AuthorizationConfig
authorizationConfig required =
  (merge required
    { "AwsIamConfig" : Nothing
    })

-- | `AWS::AppSync::DataSource.DynamoDBConfig`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-datasource-dynamodbconfig.html
-- |
-- | - `TableName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-datasource-dynamodbconfig.html#cfn-appsync-datasource-dynamodbconfig-tablename
-- | - `AwsRegion`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-datasource-dynamodbconfig.html#cfn-appsync-datasource-dynamodbconfig-awsregion
-- | - `UseCallerCredentials`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-datasource-dynamodbconfig.html#cfn-appsync-datasource-dynamodbconfig-usecallercredentials
type DynamoDBConfig =
  { "TableName" :: Value String
  , "AwsRegion" :: Value String
  , "UseCallerCredentials" :: Maybe (Value Boolean)
  }

dynamoDBConfig :: { "TableName" :: Value String, "AwsRegion" :: Value String } -> DynamoDBConfig
dynamoDBConfig required =
  (merge required
    { "UseCallerCredentials" : Nothing
    })

-- | `AWS::AppSync::DataSource.AwsIamConfig`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-datasource-awsiamconfig.html
-- |
-- | - `SigningRegion`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-datasource-awsiamconfig.html#cfn-appsync-datasource-awsiamconfig-signingregion
-- | - `SigningServiceName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-datasource-awsiamconfig.html#cfn-appsync-datasource-awsiamconfig-signingservicename
type AwsIamConfig =
  { "SigningRegion" :: Maybe (Value String)
  , "SigningServiceName" :: Maybe (Value String)
  }

awsIamConfig :: AwsIamConfig
awsIamConfig =
  { "SigningRegion" : Nothing
  , "SigningServiceName" : Nothing
  }

-- | `AWS::AppSync::DataSource.RelationalDatabaseConfig`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-datasource-relationaldatabaseconfig.html
-- |
-- | - `RdsHttpEndpointConfig`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-datasource-relationaldatabaseconfig.html#cfn-appsync-datasource-relationaldatabaseconfig-rdshttpendpointconfig
-- | - `RelationalDatabaseSourceType`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-datasource-relationaldatabaseconfig.html#cfn-appsync-datasource-relationaldatabaseconfig-relationaldatabasesourcetype
type RelationalDatabaseConfig =
  { "RelationalDatabaseSourceType" :: Value String
  , "RdsHttpEndpointConfig" :: Maybe (Value RdsHttpEndpointConfig)
  }

relationalDatabaseConfig :: { "RelationalDatabaseSourceType" :: Value String } -> RelationalDatabaseConfig
relationalDatabaseConfig required =
  (merge required
    { "RdsHttpEndpointConfig" : Nothing
    })