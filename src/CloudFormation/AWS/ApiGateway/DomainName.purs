module CloudFormation.AWS.ApiGateway.DomainName where 

import Data.Maybe (Maybe(..))
import Record (merge)


-- | `AWS::ApiGateway::DomainName`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-domainname.html-- |
-- | - `CertificateArn`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-domainname.html#cfn-apigateway-domainname-certificatearn
-- | - `DomainName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-domainname.html#cfn-apigateway-domainname-domainname
-- | - `EndpointConfiguration`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-domainname.html#cfn-apigateway-domainname-endpointconfiguration
-- | - `RegionalCertificateArn`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-domainname.html#cfn-apigateway-domainname-regionalcertificatearn
type DomainName =
  { "DomainName" :: String
  , "CertificateArn" :: Maybe String
  , "EndpointConfiguration" :: Maybe EndpointConfiguration
  , "RegionalCertificateArn" :: Maybe String
  }

domainName :: { "DomainName" :: String } -> DomainName
domainName required =
  merge required
    { "CertificateArn" : Nothing
    , "EndpointConfiguration" : Nothing
    , "RegionalCertificateArn" : Nothing
    }

-- | `AWS::ApiGateway::DomainName.EndpointConfiguration`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-domainname-endpointconfiguration.html-- |
-- | - `Types`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-domainname-endpointconfiguration.html#cfn-apigateway-domainname-endpointconfiguration-types
type EndpointConfiguration =
  { "Types" :: Maybe (Array String)
  }

endpointConfiguration :: EndpointConfiguration
endpointConfiguration =
  { "Types" : Nothing
  }