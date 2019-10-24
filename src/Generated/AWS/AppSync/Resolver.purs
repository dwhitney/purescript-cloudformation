module CloudFormation.AWS.AppSync.Resolver where 

import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation (class Resource)
import Data.Newtype (class Newtype)


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
-- | - `RequestMappingTemplateS3Location`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appsync-resolver.html#cfn-appsync-resolver-requestmappingtemplates3location
-- | - `ApiId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appsync-resolver.html#cfn-appsync-resolver-apiid
-- | - `FieldName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appsync-resolver.html#cfn-appsync-resolver-fieldname
newtype Resolver = Resolver
  { "TypeName" :: String
  , "ApiId" :: String
  , "FieldName" :: String
  , "ResponseMappingTemplateS3Location" :: Maybe String
  , "PipelineConfig" :: Maybe PipelineConfig
  , "DataSourceName" :: Maybe String
  , "RequestMappingTemplate" :: Maybe String
  , "ResponseMappingTemplate" :: Maybe String
  , "Kind" :: Maybe String
  , "RequestMappingTemplateS3Location" :: Maybe String
  }

derive instance newtypeResolver :: Newtype Resolver _
instance resourceResolver :: Resource Resolver where type_ _ = "AWS::AppSync::Resolver"

resolver :: { "TypeName" :: String, "ApiId" :: String, "FieldName" :: String } -> Resolver
resolver required = Resolver
  (merge required
    { "ResponseMappingTemplateS3Location" : Nothing
    , "PipelineConfig" : Nothing
    , "DataSourceName" : Nothing
    , "RequestMappingTemplate" : Nothing
    , "ResponseMappingTemplate" : Nothing
    , "Kind" : Nothing
    , "RequestMappingTemplateS3Location" : Nothing
    })

-- | `AWS::AppSync::Resolver.PipelineConfig`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-resolver-pipelineconfig.html
-- |
-- | - `Functions`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-resolver-pipelineconfig.html#cfn-appsync-resolver-pipelineconfig-functions
type PipelineConfig =
  { "Functions" :: Maybe (Array String)
  }

pipelineConfig :: PipelineConfig
pipelineConfig =
  { "Functions" : Nothing
  }