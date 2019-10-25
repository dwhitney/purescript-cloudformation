module CloudFormation.AWS.ApiGateway.DomainName where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


-- | `AWS::ApiGateway::DomainName`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-domainname.html
-- |
-- | - `CertificateArn`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-domainname.html#cfn-apigateway-domainname-certificatearn
-- | - `DomainName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-domainname.html#cfn-apigateway-domainname-domainname
-- | - `EndpointConfiguration`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-domainname.html#cfn-apigateway-domainname-endpointconfiguration
-- | - `RegionalCertificateArn`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-domainname.html#cfn-apigateway-domainname-regionalcertificatearn
newtype DomainName = DomainName
  { "DomainName" :: Value String
  , "CertificateArn" :: Maybe (Value String)
  , "EndpointConfiguration" :: Maybe (Value EndpointConfiguration)
  , "RegionalCertificateArn" :: Maybe (Value String)
  }

derive instance newtypeDomainName :: Newtype DomainName _
derive newtype instance writeDomainName :: WriteForeign DomainName
instance resourceDomainName :: Resource DomainName where type_ _ = "AWS::ApiGateway::DomainName"

domainName :: { "DomainName" :: Value String } -> DomainName
domainName required = DomainName
  (merge required
    { "CertificateArn" : Nothing
    , "EndpointConfiguration" : Nothing
    , "RegionalCertificateArn" : Nothing
    })

-- | `AWS::ApiGateway::DomainName.EndpointConfiguration`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-domainname-endpointconfiguration.html
-- |
-- | - `Types`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-domainname-endpointconfiguration.html#cfn-apigateway-domainname-endpointconfiguration-types
type EndpointConfiguration =
  { "Types" :: Maybe (Value (Array String))
  }

endpointConfiguration :: EndpointConfiguration
endpointConfiguration =
  { "Types" : Nothing
  }