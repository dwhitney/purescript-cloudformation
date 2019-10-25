module CloudFormation.AWS.AppSync.FunctionConfiguration where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


-- | `AWS::AppSync::FunctionConfiguration`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appsync-functionconfiguration.html
-- |
-- | - `ResponseMappingTemplateS3Location`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appsync-functionconfiguration.html#cfn-appsync-functionconfiguration-responsemappingtemplates3location
-- | - `Description`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appsync-functionconfiguration.html#cfn-appsync-functionconfiguration-description
-- | - `DataSourceName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appsync-functionconfiguration.html#cfn-appsync-functionconfiguration-datasourcename
-- | - `RequestMappingTemplate`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appsync-functionconfiguration.html#cfn-appsync-functionconfiguration-requestmappingtemplate
-- | - `ResponseMappingTemplate`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appsync-functionconfiguration.html#cfn-appsync-functionconfiguration-responsemappingtemplate
-- | - `FunctionVersion`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appsync-functionconfiguration.html#cfn-appsync-functionconfiguration-functionversion
-- | - `RequestMappingTemplateS3Location`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appsync-functionconfiguration.html#cfn-appsync-functionconfiguration-requestmappingtemplates3location
-- | - `ApiId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appsync-functionconfiguration.html#cfn-appsync-functionconfiguration-apiid
-- | - `Name`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appsync-functionconfiguration.html#cfn-appsync-functionconfiguration-name
newtype FunctionConfiguration = FunctionConfiguration
  { "DataSourceName" :: Value String
  , "FunctionVersion" :: Value String
  , "ApiId" :: Value String
  , "Name" :: Value String
  , "ResponseMappingTemplateS3Location" :: Maybe (Value String)
  , "Description" :: Maybe (Value String)
  , "RequestMappingTemplate" :: Maybe (Value String)
  , "ResponseMappingTemplate" :: Maybe (Value String)
  , "RequestMappingTemplateS3Location" :: Maybe (Value String)
  }

derive instance newtypeFunctionConfiguration :: Newtype FunctionConfiguration _
derive newtype instance writeFunctionConfiguration :: WriteForeign FunctionConfiguration
instance resourceFunctionConfiguration :: Resource FunctionConfiguration where type_ _ = "AWS::AppSync::FunctionConfiguration"

functionConfiguration :: { "DataSourceName" :: Value String, "FunctionVersion" :: Value String, "ApiId" :: Value String, "Name" :: Value String } -> FunctionConfiguration
functionConfiguration required = FunctionConfiguration
  (merge required
    { "ResponseMappingTemplateS3Location" : Nothing
    , "Description" : Nothing
    , "RequestMappingTemplate" : Nothing
    , "ResponseMappingTemplate" : Nothing
    , "RequestMappingTemplateS3Location" : Nothing
    })