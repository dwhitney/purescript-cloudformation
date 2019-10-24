module CloudFormation.AWS.ApiGateway.BasePathMapping where 

import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation (class Resource)
import Data.Newtype (class Newtype)


-- | `AWS::ApiGateway::BasePathMapping`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-basepathmapping.html
-- |
-- | - `BasePath`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-basepathmapping.html#cfn-apigateway-basepathmapping-basepath
-- | - `DomainName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-basepathmapping.html#cfn-apigateway-basepathmapping-domainname
-- | - `RestApiId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-basepathmapping.html#cfn-apigateway-basepathmapping-restapiid
-- | - `Stage`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-basepathmapping.html#cfn-apigateway-basepathmapping-stage
newtype BasePathMapping = BasePathMapping
  { "DomainName" :: String
  , "BasePath" :: Maybe String
  , "RestApiId" :: Maybe String
  , "Stage" :: Maybe String
  }

derive instance newtypeBasePathMapping :: Newtype BasePathMapping _
instance resourceBasePathMapping :: Resource BasePathMapping where type_ _ = "AWS::ApiGateway::BasePathMapping"

basePathMapping :: { "DomainName" :: String } -> BasePathMapping
basePathMapping required = BasePathMapping
  (merge required
    { "BasePath" : Nothing
    , "RestApiId" : Nothing
    , "Stage" : Nothing
    })