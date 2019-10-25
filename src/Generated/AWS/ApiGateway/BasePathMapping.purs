module CloudFormation.AWS.ApiGateway.BasePathMapping where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


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
  { "DomainName" :: Value String
  , "BasePath" :: Maybe (Value String)
  , "RestApiId" :: Maybe (Value String)
  , "Stage" :: Maybe (Value String)
  }

derive instance newtypeBasePathMapping :: Newtype BasePathMapping _
derive newtype instance writeBasePathMapping :: WriteForeign BasePathMapping
instance resourceBasePathMapping :: Resource BasePathMapping where type_ _ = "AWS::ApiGateway::BasePathMapping"

basePathMapping :: { "DomainName" :: Value String } -> BasePathMapping
basePathMapping required = BasePathMapping
  (merge required
    { "BasePath" : Nothing
    , "RestApiId" : Nothing
    , "Stage" : Nothing
    })