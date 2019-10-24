module CloudFormation.AWS.ApiGateway.DomainName where 

import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation (class Resource)
import Data.Newtype (class Newtype)


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
  { "DomainName" :: String
  , "CertificateArn" :: Maybe String
  , "EndpointConfiguration" :: Maybe EndpointConfiguration
  , "RegionalCertificateArn" :: Maybe String
  }

derive instance newtypeDomainName :: Newtype DomainName _
instance resourceDomainName :: Resource DomainName where type_ _ = "AWS::ApiGateway::DomainName"

domainName :: { "DomainName" :: String } -> DomainName
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
  { "Types" :: Maybe (Array String)
  }

endpointConfiguration :: EndpointConfiguration
endpointConfiguration =
  { "Types" : Nothing
  }