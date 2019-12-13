module CloudFormation.AWS.AppSync.Resolver where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


-- | `AWS::AppSync::Resolver`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appsync-resolver.html
-- |
-- | - `ResponseMappingTemplateS3Location`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appsync-resolver.html#cfn-appsync-resolver-responsemappingtemplates3location
-- | - `TypeName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appsync-resolver.html#cfn-appsync-resolver-typename
-- | - `PipelineConfig`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appsync-resolver.html#cfn-appsync-resolver-pipelineconfig
-- | - `DataSourceName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appsync-resolver.html#cfn-appsync-resolver-datasourcename
-- | - `RequestMappingTemplate`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appsync-resolver.html#cfn-appsync-resolver-requestmappingtemplate
-- | - `ResponseMappingTemplate`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appsync-resolver.html#cfn-appsync-resolver-responsemappingtemplate
-- | - `Kind`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appsync-resolver.html#cfn-appsync-resolver-kind
-- | - `CachingConfig`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appsync-resolver.html#cfn-appsync-resolver-cachingconfig
-- | - `SyncConfig`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appsync-resolver.html#cfn-appsync-resolver-syncconfig
-- | - `RequestMappingTemplateS3Location`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appsync-resolver.html#cfn-appsync-resolver-requestmappingtemplates3location
-- | - `ApiId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appsync-resolver.html#cfn-appsync-resolver-apiid
-- | - `FieldName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appsync-resolver.html#cfn-appsync-resolver-fieldname
newtype Resolver = Resolver
  { "TypeName" :: Value String
  , "ApiId" :: Value String
  , "FieldName" :: Value String
  , "ResponseMappingTemplateS3Location" :: Maybe (Value String)
  , "PipelineConfig" :: Maybe (Value PipelineConfig)
  , "DataSourceName" :: Maybe (Value String)
  , "RequestMappingTemplate" :: Maybe (Value String)
  , "ResponseMappingTemplate" :: Maybe (Value String)
  , "Kind" :: Maybe (Value String)
  , "CachingConfig" :: Maybe (Value CachingConfig)
  , "SyncConfig" :: Maybe (Value SyncConfig)
  , "RequestMappingTemplateS3Location" :: Maybe (Value String)
  }

derive instance newtypeResolver :: Newtype Resolver _
derive newtype instance writeResolver :: WriteForeign Resolver
instance resourceResolver :: Resource Resolver where type_ _ = "AWS::AppSync::Resolver"

resolver :: { "TypeName" :: Value String, "ApiId" :: Value String, "FieldName" :: Value String } -> Resolver
resolver required = Resolver
  (merge required
    { "ResponseMappingTemplateS3Location" : Nothing
    , "PipelineConfig" : Nothing
    , "DataSourceName" : Nothing
    , "RequestMappingTemplate" : Nothing
    , "ResponseMappingTemplate" : Nothing
    , "Kind" : Nothing
    , "CachingConfig" : Nothing
    , "SyncConfig" : Nothing
    , "RequestMappingTemplateS3Location" : Nothing
    })

-- | `AWS::AppSync::Resolver.CachingConfig`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-resolver-cachingconfig.html
-- |
-- | - `CachingKeys`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-resolver-cachingconfig.html#cfn-appsync-resolver-cachingconfig-cachingkeys
-- | - `Ttl`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-resolver-cachingconfig.html#cfn-appsync-resolver-cachingconfig-ttl
type CachingConfig =
  { "CachingKeys" :: Maybe (Value (Array String))
  , "Ttl" :: Maybe (Value Number)
  }

cachingConfig :: CachingConfig
cachingConfig =
  { "CachingKeys" : Nothing
  , "Ttl" : Nothing
  }

-- | `AWS::AppSync::Resolver.SyncConfig`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-resolver-syncconfig.html
-- |
-- | - `ConflictHandler`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-resolver-syncconfig.html#cfn-appsync-resolver-syncconfig-conflicthandler
-- | - `ConflictDetection`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-resolver-syncconfig.html#cfn-appsync-resolver-syncconfig-conflictdetection
-- | - `LambdaConflictHandlerConfig`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-resolver-syncconfig.html#cfn-appsync-resolver-syncconfig-lambdaconflicthandlerconfig
type SyncConfig =
  { "ConflictDetection" :: Value String
  , "ConflictHandler" :: Maybe (Value String)
  , "LambdaConflictHandlerConfig" :: Maybe (Value LambdaConflictHandlerConfig)
  }

syncConfig :: { "ConflictDetection" :: Value String } -> SyncConfig
syncConfig required =
  (merge required
    { "ConflictHandler" : Nothing
    , "LambdaConflictHandlerConfig" : Nothing
    })

-- | `AWS::AppSync::Resolver.PipelineConfig`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-resolver-pipelineconfig.html
-- |
-- | - `Functions`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-resolver-pipelineconfig.html#cfn-appsync-resolver-pipelineconfig-functions
type PipelineConfig =
  { "Functions" :: Maybe (Value (Array String))
  }

pipelineConfig :: PipelineConfig
pipelineConfig =
  { "Functions" : Nothing
  }

-- | `AWS::AppSync::Resolver.LambdaConflictHandlerConfig`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-resolver-lambdaconflicthandlerconfig.html
-- |
-- | - `LambdaConflictHandlerArn`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-resolver-lambdaconflicthandlerconfig.html#cfn-appsync-resolver-lambdaconflicthandlerconfig-lambdaconflicthandlerarn
type LambdaConflictHandlerConfig =
  { "LambdaConflictHandlerArn" :: Maybe (Value String)
  }

lambdaConflictHandlerConfig :: LambdaConflictHandlerConfig
lambdaConflictHandlerConfig =
  { "LambdaConflictHandlerArn" : Nothing
  }