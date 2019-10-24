module CloudFormation.AWS.AppSync.FunctionConfiguration where 

import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation (class Resource)
import Data.Newtype (class Newtype)


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

derive instance newtypeFunctionConfiguration :: Newtype FunctionConfiguration _
instance resourceFunctionConfiguration :: Resource FunctionConfiguration where type_ _ = "AWS::AppSync::FunctionConfiguration"

functionConfiguration :: { "DataSourceName" :: String, "FunctionVersion" :: String, "ApiId" :: String, "Name" :: String } -> FunctionConfiguration
functionConfiguration required = FunctionConfiguration
  (merge required
    { "ResponseMappingTemplateS3Location" : Nothing
    , "Description" : Nothing
    , "RequestMappingTemplate" : Nothing
    , "ResponseMappingTemplate" : Nothing
    , "RequestMappingTemplateS3Location" : Nothing
    })