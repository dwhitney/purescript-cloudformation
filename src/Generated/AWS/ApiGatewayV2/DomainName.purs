module CloudFormation.AWS.ApiGatewayV2.DomainName where 

import Data.Maybe (Maybe(..))
import CloudFormation (Json) as CF
import Record (merge)
import CloudFormation (class Resource)
import Data.Newtype (class Newtype)


-- | `AWS::ApiGatewayV2::DomainName`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-domainname.html
-- |
-- | - `DomainName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-domainname.html#cfn-apigatewayv2-domainname-domainname
-- | - `DomainNameConfigurations`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-domainname.html#cfn-apigatewayv2-domainname-domainnameconfigurations
-- | - `Tags`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-domainname.html#cfn-apigatewayv2-domainname-tags
newtype DomainName = DomainName
  { "DomainName" :: String
  , "DomainNameConfigurations" :: Maybe (Array DomainNameConfiguration)
  , "Tags" :: Maybe CF.Json
  }

derive instance newtypeDomainName :: Newtype DomainName _
instance resourceDomainName :: Resource DomainName where type_ _ = "AWS::ApiGatewayV2::DomainName"

domainName :: { "DomainName" :: String } -> DomainName
domainName required = DomainName
  (merge required
    { "DomainNameConfigurations" : Nothing
    , "Tags" : Nothing
    })

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