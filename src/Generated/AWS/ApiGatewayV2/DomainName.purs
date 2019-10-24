module CloudFormation.AWS.ApiGatewayV2.DomainName where 

import Data.Maybe (Maybe(..))
import CloudFormation (Json)
import Record (merge)


-- | `AWS::ApiGatewayV2::DomainName`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-domainname.html
-- |
-- | - `DomainName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-domainname.html#cfn-apigatewayv2-domainname-domainname
-- | - `DomainNameConfigurations`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-domainname.html#cfn-apigatewayv2-domainname-domainnameconfigurations
-- | - `Tags`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-domainname.html#cfn-apigatewayv2-domainname-tags
type DomainName =
  { "DomainName" :: String
  , "DomainNameConfigurations" :: Maybe (Array DomainNameConfiguration)
  , "Tags" :: Maybe Json
  }

domainName :: { "DomainName" :: String } -> DomainName
domainName required =
  merge required
    { "DomainNameConfigurations" : Nothing
    , "Tags" : Nothing
    }

-- | `AWS::ApiGatewayV2::DomainName.DomainNameConfiguration`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigatewayv2-domainname-domainnameconfiguration.html
-- |
-- | - `EndpointType`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigatewayv2-domainname-domainnameconfiguration.html#cfn-apigatewayv2-domainname-domainnameconfiguration-endpointtype
-- | - `CertificateName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigatewayv2-domainname-domainnameconfiguration.html#cfn-apigatewayv2-domainname-domainnameconfiguration-certificatename
-- | - `CertificateArn`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigatewayv2-domainname-domainnameconfiguration.html#cfn-apigatewayv2-domainname-domainnameconfiguration-certificatearn
type DomainNameConfiguration =
  { "EndpointType" :: Maybe String
  , "CertificateName" :: Maybe String
  , "CertificateArn" :: Maybe String
  }

domainNameConfiguration :: DomainNameConfiguration
domainNameConfiguration =
  { "EndpointType" : Nothing
  , "CertificateName" : Nothing
  , "CertificateArn" : Nothing
  }