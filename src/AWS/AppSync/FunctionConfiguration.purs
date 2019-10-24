module AWS.AppSync.FunctionConfiguration where 

import Data.Maybe (Maybe(..))
import Record (merge)


type FunctionConfiguration =
  { "DataSourceName" :: String
  , "FunctionVersion" :: String
  , "ApiId" :: String
  , "Name" :: String
  , "ResponseMappingTemplateS3Location" :: Maybe String
  , "Description" :: Maybe String
  , "RequestMappingTemplate" :: Maybe String
  , "ResponseMappingTemplate" :: Maybe String
  , "RequestMappingTemplateS3Location" :: Maybe String
  }

functionConfiguration :: { "DataSourceName" :: String, "FunctionVersion" :: String, "ApiId" :: String, "Name" :: String } -> FunctionConfiguration
functionConfiguration required =
  merge required
    { "ResponseMappingTemplateS3Location" : Nothing
    , "Description" : Nothing
    , "RequestMappingTemplate" : Nothing
    , "ResponseMappingTemplate" : Nothing
    , "RequestMappingTemplateS3Location" : Nothing
    }