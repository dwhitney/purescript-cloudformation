module CloudFormation.AWS.ApiGateway.BasePathMapping where 

import Data.Maybe (Maybe(..))
import Record (merge)


-- | `AWS::ApiGateway::BasePathMapping`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-basepathmapping.html-- |
-- | - `BasePath`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-basepathmapping.html#cfn-apigateway-basepathmapping-basepath
-- | - `DomainName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-basepathmapping.html#cfn-apigateway-basepathmapping-domainname
-- | - `RestApiId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-basepathmapping.html#cfn-apigateway-basepathmapping-restapiid
-- | - `Stage`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-basepathmapping.html#cfn-apigateway-basepathmapping-stage
type BasePathMapping =
  { "DomainName" :: String
  , "BasePath" :: Maybe String
  , "RestApiId" :: Maybe String
  , "Stage" :: Maybe String
  }

basePathMapping :: { "DomainName" :: String } -> BasePathMapping
basePathMapping required =
  merge required
    { "BasePath" : Nothing
    , "RestApiId" : Nothing
    , "Stage" : Nothing
    }