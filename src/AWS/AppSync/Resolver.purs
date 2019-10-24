module AWS.AppSync.Resolver where 

import Data.Maybe (Maybe(..))
import Record (merge)


type Resolver =
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

resolver :: { "TypeName" :: String, "ApiId" :: String, "FieldName" :: String } -> Resolver
resolver required =
  merge required
    { "ResponseMappingTemplateS3Location" : Nothing
    , "PipelineConfig" : Nothing
    , "DataSourceName" : Nothing
    , "RequestMappingTemplate" : Nothing
    , "ResponseMappingTemplate" : Nothing
    , "Kind" : Nothing
    , "RequestMappingTemplateS3Location" : Nothing
    }

type PipelineConfig =
  { "Functions" :: Maybe (Array String)
  }

pipelineConfig :: PipelineConfig
pipelineConfig =
  { "Functions" : Nothing
  }